$.getJSON("https://api.ipify.org?format=jsonp&callback=?", function (data) {
  console.log(JSON.stringify(data, null, 2));

  console.log(JSON.stringify(data, null, 1));
});
