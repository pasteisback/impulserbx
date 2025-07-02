const fs = require("fs");
const path = require("path");

exports.handler = async function (event) {
  const hwid = event.queryStringParameters.hwid;
  if (!hwid) {
    return { statusCode: 400, body: JSON.stringify({ status: "error", reason: "No HWID provided" }) };
  }

  const key = [...Array(32)].map(() => Math.floor(Math.random() * 16).toString(16)).join("");
  const expires = Date.now() + 1000 * 60 * 60 * 24; // 24 hours

  const keyPath = path.join(__dirname, "..", "..", "keys.json");
  let keys = {};

  try {
    if (fs.existsSync(keyPath)) {
      keys = JSON.parse(fs.readFileSync(keyPath));
    }
    keys[key] = { hwid, expires };
    fs.writeFileSync(keyPath, JSON.stringify(keys, null, 2));
  } catch (e) {
    return { statusCode: 500, body: JSON.stringify({ status: "error", reason: "File write failed" }) };
  }

  return {
    statusCode: 200,
    body: JSON.stringify({ status: "success", key }),
  };
};
