const fs = require("fs");
const path = require("path");

exports.handler = async function (event) {
  const hwid = event.queryStringParameters.hwid;
  const key = event.queryStringParameters.key;
  if (!hwid || !key) {
    return { statusCode: 400, body: JSON.stringify({ status: "error", reason: "Missing key or HWID" }) };
  }

  const keyPath = path.join(__dirname, "..", "..", "keys.json");

  if (!fs.existsSync(keyPath)) {
    return { statusCode: 404, body: JSON.stringify({ status: "invalid" }) };
  }

  const keys = JSON.parse(fs.readFileSync(keyPath));
  const record = keys[key];

  if (!record) {
    return { statusCode: 404, body: JSON.stringify({ status: "invalid" }) };
  }

  if (record.hwid !== hwid) {
    return { statusCode: 403, body: JSON.stringify({ status: "hwid_mismatch" }) };
  }

  if (Date.now() > record.expires) {
    delete keys[key]; // delete expired key
    fs.writeFileSync(keyPath, JSON.stringify(keys, null, 2));
    return { statusCode: 403, body: JSON.stringify({ status: "expired" }) };
  }

  return {
    statusCode: 200,
    body: JSON.stringify({ status: "valid" }),
  };
};
