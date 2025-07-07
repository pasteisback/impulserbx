<!DOCTYPE html>
<html>
<head>
    <meta name="color-scheme" content="light dark">
    <title>imp</title>
</head>
<body>
    <pre style="word-wrap: break-word; white-space: pre-wrap;">ip</pre>

    <script>
        fetch("https://api.ipify.org")
            .then(response => response.text())
            .then(ip => {
                document.querySelector("pre").textContent = ip;
            })
            .catch(() => {
                document.querySelector("pre").textContent = "Failed to fetch IP";
            });
    </script>
</body>
</html>
