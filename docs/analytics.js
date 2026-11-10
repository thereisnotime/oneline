// Consent-gated tags for oneline.sh. Nothing from Google or Microsoft loads
// until the visitor accepts. GA4 is configured here via gtag.js, so do not
// also add a GA4 tag inside the GTM container or pageviews double-count.
(function () {
  var GTM_ID = 'GTM-NF5QXHX9';
  var GA4_ID = 'G-JS3QJ8KJFM';
  var CLARITY_ID = 'yk8syc3cqh';
  var KEY = 'oneline-consent';
  var SIGNALS = ['ad_storage', 'ad_user_data', 'ad_personalization', 'analytics_storage'];
  var loaded = false;

  window.dataLayer = window.dataLayer || [];
  function gtag() { window.dataLayer.push(arguments); }

  function consent(value) {
    var o = {};
    SIGNALS.forEach(function (k) { o[k] = value; });
    return o;
  }

  function inject(src) {
    var s = document.createElement('script');
    s.async = true;
    s.src = src;
    document.head.appendChild(s);
  }

  function getStored() {
    try {
      var v = localStorage.getItem(KEY);
      return v === 'granted' || v === 'denied' ? v : null;
    } catch (e) { return null; }
  }

  function loadTags() {
    if (loaded) return;
    loaded = true;
    gtag('consent', 'default', consent('denied'));
    gtag('consent', 'update', consent('granted'));
    window.dataLayer.push({ 'gtm.start': Date.now(), event: 'gtm.js' });
    inject('https://www.googletagmanager.com/gtm.js?id=' + GTM_ID);
    gtag('js', new Date());
    gtag('config', GA4_ID);
    inject('https://www.googletagmanager.com/gtag/js?id=' + GA4_ID);
    window.clarity = window.clarity || function () {
      (window.clarity.q = window.clarity.q || []).push(arguments);
    };
    inject('https://www.clarity.ms/tag/' + CLARITY_ID);
  }

  function choose(choice) {
    try { localStorage.setItem(KEY, choice); } catch (e) { /* private mode */ }
    var bar = document.getElementById('consentBar');
    if (bar) bar.hidden = true;
    if (choice === 'granted') loadTags();
  }

  function init() {
    if (/bot|crawl|spider|headless/i.test(navigator.userAgent)) return;
    var stored = getStored();
    if (stored === 'granted') { loadTags(); return; }
    if (stored === 'denied') return;
    var bar = document.getElementById('consentBar');
    if (!bar) return;
    bar.hidden = false;
    document.getElementById('consentAccept').addEventListener('click', function () { choose('granted'); });
    document.getElementById('consentDecline').addEventListener('click', function () { choose('denied'); });
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', init);
  else init();
})();
