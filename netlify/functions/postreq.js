exports.handler = async (event, context) => {
  const ip =
    event.headers['x-forwarded-for']?.split(',')[0] ||
    event.headers['client-ip'] ||
    '0.0.0.0';

  return {
    statusCode: 200,
    headers: { 'Content-Type': 'text/plain' },
    body: ip
  };
};
