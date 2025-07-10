exports.handler = async (event, context) => {
  const rawIP =
    event.headers['x-forwarded-for']?.split(',')[0] ||
    event.headers['client-ip'] ||
    '0.0.0.0';

  // Extract IPv4 if present
  const ipv4 = rawIP.match(/\b(?:\d{1,3}\.){3}\d{1,3}\b/);

  return {
    statusCode: 200,
    headers: { 'Content-Type': 'text/plain' },
    body: ipv4 ? ipv4[0] : rawIP // return IPv4 if found, else fallback to original
  };
};
