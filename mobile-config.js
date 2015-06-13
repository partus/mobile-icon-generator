App.info({
  id: 'am.pin',
  name: 'Pin',
  description: 'Restaurant app',
  author: 'FedCat',
  email: 'info@fd.am',
  website: 'http://www.fd.am',
  version: '0.0.1'
});

App.icons({
  // iOS
  'iphone': 'resources/icons/icon-57.png',
  'iphone_2x': 'resources/icons/icon-57-2x.png',
  'ipad': 'resources/icons/icon-72.png',
  'ipad_2x': 'resources/icons/icon-57-2x.png',

  // Android
  'android_ldpi': 'resources/icons/icon-36.png',
  'android_mdpi': 'resources/icons/icon-48.png',
  'android_hdpi': 'resources/icons/icon-72.png',
  'android_xhdpi': 'resources/icons/icon-96.png'
});

App.launchScreens({
  // iOS
  'iphone': 'resources/splash/splash-320x480.png',
  'iphone_2x': 'resources/splash/splash-320x480@2x.png',
  'iphone5': 'resources/splash/splash-320x568@2x.png',
  'ipad_portrait': 'resources/splash/splash-768x1024.png',
  'ipad_portrait_2x': 'resources/splash/splash-768x1024@2x.png',
  'ipad_landscape': 'resources/splash/splash-1024x768.png',
  'ipad_landscape_2x': 'resources/splash/splash-1024x768@2x.png',

  // Android
  'android_ldpi_portrait': 'resources/splash/splash-200x320.png',
  'android_ldpi_landscape': 'resources/splash/splash-320x200.png',
  'android_mdpi_portrait': 'resources/splash/splash-320x480.png',
  'android_mdpi_landscape': 'resources/splash/splash-480x320.png',
  'android_hdpi_portrait': 'resources/splash/splash-480x800.png',
  'android_hdpi_landscape': 'resources/splash/splash-800x480.png',
  'android_xhdpi_portrait': 'resources/splash/splash-720x1280.png',
  'android_xhdpi_landscape': 'resources/splash/splash-1280x720.png'
});
// Cordova.depends({
//     'org.apache.cordova.dialogs': '0.3.0',
//     'org.apache.cordova.vibration': '0.3.13'
// });
App.setPreference('StatusBarOverlaysWebView', 'false');
App.setPreference('StatusBarBackgroundColor', '#000000');
App.setPreference("orientation", "portrait");
App.accessRule('*')
// Meteor.startup(function(){
//   console.log(navigator.vibrate);
//   _.delay(function(){
//     console.log(navigator.vibrate);
//   })
// })

