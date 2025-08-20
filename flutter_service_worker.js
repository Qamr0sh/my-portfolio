'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "4f4079799f55a7ecb64f986964ac12f6",
"assets/AssetManifest.bin.json": "910e748d0f433e18ba11150b6992ccbd",
"assets/AssetManifest.json": "98d4d7988568204c094b15520502d4e3",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Black%2520Italic.otf": "f09b9ad2ab8561bb909f20319d281e8e",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Black.otf": "977798a00d4f3b8cb278788f1806dff6",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Bold%2520Italic.otf": "8773ad9faebbf8632d454b40d805b612",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Bold.otf": "83dc815ab20bd7d89d9242f342a3248b",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Book%2520Italic.otf": "e34ca4aa107c1e0a881863105f0da595",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Book.otf": "52277868ee25a6b86911c0c801892414",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Light%2520Italic.otf": "d70c11cee5e4a49ec4b3c64e113e3d58",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Light.otf": "7dfa5daaf3aa63649a9772ccc8d00174",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Medium%2520Italic.otf": "c962180d2ddbe2c78dde8de5ba034b84",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Medium.otf": "44deca7de67bf4ba0f819de2ddeb162b",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Regular%2520Italic.otf": "d0c1a163b8b58170da4495f48f5ad3f2",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Regular.otf": "96f5a7b46ede4ef2013a6af3caa2c415",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520SemiBold%2520Italic.otf": "7b4197a53701121abf912b314c03f61e",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520SemiBold.otf": "f17288b8bf36305ef0cdc12f3c585493",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Thin%2520Italic.otf": "683d5573d22ab76af4465590c1a00f2a",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Thin.otf": "567ea16d8e966b44487ccb718e062ede",
"assets/assets/fonts/Groteskly%2520Yours%2520-%2520Oktah%2520Round%2520Variable.ttf": "dd64261305d37306c5e80147b481f5be",
"assets/assets/icons/discord_icon.svg": "e8c8e6a33af51d95763d3734037980c2",
"assets/assets/icons/facebook_icon.svg": "ac8f2cf5207728fc29aaed2295cda64e",
"assets/assets/icons/instagram_icon.svg": "67b1819a353e8830b64e4644682f14f8",
"assets/assets/icons/linkedIn_icon.svg": "b3faddd006156ddc3eefe30cc7b0e496",
"assets/assets/icons/Pinterest_icon.svg": "57a29cc43a3f5ca70adc97eb4dd38c51",
"assets/assets/icons/telegram_icon.svg": "44037fac39969bc9d9d86b2bca6a18da",
"assets/assets/icons/typography_logo.svg": "d4049549156f59d176a3852a256929b2",
"assets/assets/icons/whatsapp_icon.svg": "467e8c040229186f3bce2a1010509ffe",
"assets/assets/image/image_section_1.png": "428b0b1b68f25590f5f24510e0ac401a",
"assets/FontManifest.json": "f87b97fbbf978f8bb419d197be690b27",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "1d1d5864d13766a3670541ec374bbc81",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "938808c1b46e48aba21ee441febdbfbc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bf1e45747974a42ebcf850f57cc46223",
"/": "bf1e45747974a42ebcf850f57cc46223",
"main.dart.js": "b9a748b27fcbedbdf63f8b5481030c88",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
