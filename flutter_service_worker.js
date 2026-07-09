'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "9ba21c729e8c4da2a6e7f7e195bead21",
".git/config": "c628537cfef769f0c852fede28385860",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "d2718ae6393eb7657f160d6846d81ffc",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "01726d428f4052992e23ce5b86b419b4",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "90579b4994f843defb343d16edec4ce3",
".git/logs/refs/heads/portfolio-deployment": "4c5fd6fe3b02b32d3bebf4cab36a09a2",
".git/logs/refs/remotes/origin/portfolio-deployment": "0fa10a6addc2bdbe3baf5303926b1602",
".git/objects/01/b857a4ac13c5cf3d5c4d3a3c6e6cc01c64f482": "ae2d5548dbefc276ba5b40ac3ea454e0",
".git/objects/06/059ae247b33fcf2428d481df98302587f9738b": "5db4006926b81d7a374feee9858f1dc9",
".git/objects/08/27c17254fd3959af211aaf91a82d3b9a804c2f": "360dc8df65dabbf4e7f858711c46cc09",
".git/objects/08/9341c8c82ff1d87f1a15a98f2c3b6e96fe5d95": "a8f7fe8db3c353fc8d2ff712dcd61ef8",
".git/objects/09/bf5b46206f10b26bed769f0a0c9d981c57f103": "1b4e27d4c80c8985d36bc65559209168",
".git/objects/0a/8db2e5dc6fc5d10d048cdad88e3b8df9e71a51": "c4c8ef851e4c82d772b9a4b23bb5bc9a",
".git/objects/15/4081caffb7a912a4a8321cb809bc42cc1d7201": "3743cfbfcf599e375bf765ffe1a29093",
".git/objects/1b/77065516c3f1decfdb0dd543a7b97220da965e": "86e797b6601fe87779723867f92a6520",
".git/objects/1c/a56e595fa765b73fb2f836193b83e7892eeb11": "1d31b7775f25feb1ad0cb7e97231af88",
".git/objects/1f/8a1a3c26d505ed859dbc6f09952581d3e3aa88": "d5d0bec218b59004ac63563555f6fc57",
".git/objects/29/66bfbfa72d8402aacb02a9c6aa7626c8486a88": "f6901184ded47da207a0df42e789db0a",
".git/objects/2c/b708e8987f458209bea3f246509350c5d2adc4": "3a599c29df898b8a5166c86713204464",
".git/objects/2e/129249543577126898435236b28ef582dec1ea": "3033a2d0552135c645825b2b38b7967a",
".git/objects/38/ce4689cbf18ffa95476b9a2a72b17ac2d96317": "4436beb1f139766baef101c3d438ce99",
".git/objects/3a/8cda5335b4b2a108123194b84df133bac91b23": "1636ee51263ed072c69e4e3b8d14f339",
".git/objects/3c/3b119b760aff89d8a96b8526c8dbcc3fd516e9": "2964cde479bb47de7113f7cf75b899ea",
".git/objects/4f/40dabe4430b4d7288c6ae92d8fc3e17cf8e410": "7c1843130f2c3787540ded5445c7793a",
".git/objects/4f/b8974ba10b480167acd9f16525cdff3e20b3ee": "087cd71f01213ed900fb981ff09bf294",
".git/objects/50/de41c8315c248a4b380111aeb4d8faa5ac5a40": "b8583ff2d9af57a0745d7845cf867d55",
".git/objects/51/03e757c71f2abfd2269054a790f775ec61ffa4": "d437b77e41df8fcc0c0e99f143adc093",
".git/objects/5c/3b3f12aac0faa47735be0ca4137426e63fbb12": "707598f90fcd814860887d1337313223",
".git/objects/5c/addb7b7f8f8bc158c2592d7df75d88bc8ab4c3": "45ef196e9317c5c33d65ffeb89cd5325",
".git/objects/5e/4c4aed5383899ac18ca3df44fa83e1cc0fda71": "f686e6832d03b994ccc690741b1c7dad",
".git/objects/5f/46066001fba924d6e7b8fad7013f6d38dad052": "e8b006c54869fffc1f3988dd26ce97de",
".git/objects/68/43fddc6aef172d5576ecce56160b1c73bc0f85": "2a91c358adf65703ab820ee54e7aff37",
".git/objects/6f/7661bc79baa113f478e9a717e0c4959a3f3d27": "985be3a6935e9d31febd5205a9e04c4e",
".git/objects/7c/3463b788d022128d17b29072564326f1fd8819": "37fee507a59e935fc85169a822943ba2",
".git/objects/82/039646eae58381941a128edf3dd254c98a2961": "ba71a4099c57c699fe2ac9b609735b8e",
".git/objects/85/63aed2175379d2e75ec05ec0373a302730b6ad": "997f96db42b2dde7c208b10d023a5a8e",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/21753cdb204192a414b235db41da6a8446c8b4": "1e467e19cabb5d3d38b8fe200c37479e",
".git/objects/8f/e578a2971158d7470417ecc2a863e1e9af77e5": "1915deb7e8d01d7c7d348ccb8032d8c4",
".git/objects/93/b363f37b4951e6c5b9e1932ed169c9928b1e90": "c8d74fb3083c0dc39be8cff78a1d4dd5",
".git/objects/a7/25fa150e1a12e2b25dfdc5b5ef543feb240ec0": "24eb0f4ffae898a137df3f83be085c7f",
".git/objects/a7/3f4b23dde68ce5a05ce4c658ccd690c7f707ec": "ee275830276a88bac752feff80ed6470",
".git/objects/ad/ced61befd6b9d30829511317b07b72e66918a1": "37e7fcca73f0b6930673b256fac467ae",
".git/objects/b0/cb620987ff1c97a5036642f0434101dd01d43b": "3c5bc3938d0e084b4c79a0f8abf34bfe",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/3e39bd49dfaf9e225bb598cd9644f833badd9a": "666b0d595ebbcc37f0c7b61220c18864",
".git/objects/bd/933b77a42750a994261cd2c09e5cb5e10d2f83": "2ec25d1c9a6f62dd5b420a7eba098196",
".git/objects/c8/3af99da428c63c1f82efdcd11c8d5297bddb04": "144ef6d9a8ff9a753d6e3b9573d5242f",
".git/objects/c8/623686268ed8701d81a6e7bb8e426f075015ab": "775a9c94ad4ef293a4369d9b866ad0e2",
".git/objects/cd/3d766003f1e8001971f6617acbb4b057cf225a": "0e8b9a7e3708589d1a6b284a38e69104",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/95e2806a069a8b6863d5e1755e5d37ebaeb538": "26999ce129cbca9064b7435a1331ee72",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/5b1d3499b3b3d3989fa2a461151ba2abd92a07": "a072a09ac2efe43c8d49b7356317e52e",
".git/objects/db/6e8e438d3c8aaef8fcc0bd7a4adbf0bc9eb635": "c7561ee280d823c21de55b929e418061",
".git/objects/db/dc294f9d5a942b2fc8c8587986e627ebe460b5": "48f70bf065f574c5c97a9da27da0d92d",
".git/objects/e2/4796d812c4e5c97cec0783fb9c0f910c0fb591": "26e23fca776466bec9a26a9e48f8db5b",
".git/objects/e6/c7ecb9c97ece9091102d0d9d984e3688152f26": "f864ea9daf1efe504a5d8e6bee36b1c7",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f3/3e0726c3581f96c51f862cf61120af36599a32": "afcaefd94c5f13d3da610e0defa27e50",
".git/objects/f6/e6c75d6f1151eeb165a90f04b4d99effa41e83": "95ea83d65d44e4c524c6d51286406ac8",
".git/objects/fd/05cfbc927a4fedcbe4d6d4b62e2c1ed8918f26": "5675c69555d005a1a244cc8ba90a402c",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/refs/heads/portfolio-deployment": "f70179cb75178e2363247618c087bb4c",
".git/refs/remotes/origin/portfolio-deployment": "f70179cb75178e2363247618c087bb4c",
"assets/AssetManifest.bin": "359ffc418f21689b5acd35ebf3be7811",
"assets/AssetManifest.bin.json": "354b9ab8f2fb0643dc963ad565d84906",
"assets/assets/images/a.jpg": "39c7a3065bb68071e17f3655f4311a78",
"assets/assets/images/b.png": "437be30fde4d02cbd88151e81f0fb934",
"assets/FontManifest.json": "2a3f09429db12146b660976774660777",
"assets/fonts/MaterialIcons-Regular.otf": "abb5381110c2bec4def26a19179380e4",
"assets/NOTICES": "6ec9874b13a4ceea74d4803ea55761dd",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "1fcba7a59e49001aa1b4409a25d425b0",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "0e4d476978523c8ba77f00038317d434",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "a8488193906d4726cfbccf6d948b7681",
"/": "a8488193906d4726cfbccf6d948b7681",
"main.dart.js": "40f4805bccb9d1250bc761b3e11cbaa1",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "f6476601f31587b63bc88a55c5635867"};
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
