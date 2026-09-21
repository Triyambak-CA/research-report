(function(){
  var TK='mtartech';
  var prog=document.getElementById('prog');
  var secs=[].slice.call(document.querySelectorAll('section[id]'));
  var links=[].slice.call(document.querySelectorAll('.toc a'));
  var map={}; links.forEach(function(a){map[a.getAttribute('href').slice(1)]=a;});
  var tick=false;
  function scrollY(){
    return window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0;
  }
  function onScroll(){
    if(tick) return; tick=true;
    requestAnimationFrame(function(){
      var h=document.documentElement;
      var max=Math.max(1,(h.scrollHeight||0)-(window.innerHeight||h.clientHeight));
      var pct=scrollY()/max*100;
      prog.style.width=(pct<0?0:pct>100?100:pct)+'%';
      // getBoundingClientRect is viewport-relative and immune to offsetParent quirks
      var cur=null;
      for(var i=0;i<secs.length;i++){
        if(secs[i].getBoundingClientRect().top<=140) cur=secs[i].id;
      }
      if(!cur&&secs.length) cur=secs[0].id;
      links.forEach(function(a){a.classList.remove('on');});
      if(cur&&map[cur]) map[cur].classList.add('on');
      tick=false;
    });
  }
  window.addEventListener('scroll',onScroll,{passive:true});
  window.addEventListener('resize',onScroll); onScroll();

  function store(k,v){ try{localStorage.setItem(TK+'_'+k,v);}catch(e){} }
  function read(k){ try{return localStorage.getItem(TK+'_'+k);}catch(e){return null;} }
  var h=document.documentElement, body=document.body;

  var bth=document.getElementById('themetog');
  function labelTheme(){ bth.textContent = (h.getAttribute('data-theme')==='glass'?'Theme: Glass':'THEME: TERMINAL'); }
  bth.addEventListener('click',function(){
    var n = h.getAttribute('data-theme')==='glass' ? 'terminal':'glass';
    h.setAttribute('data-theme',n); store('theme',n); labelTheme(); onScroll();
  });
  labelTheme();

  var btoc=document.getElementById('toctog');
  function labelToc(){ btoc.textContent = h.hasAttribute('data-toc') ? 'Show contents':'Hide contents'; }
  btoc.addEventListener('click',function(){
    if(h.hasAttribute('data-toc')){ h.removeAttribute('data-toc'); store('toc_hidden','0'); }
    else { h.setAttribute('data-toc','off'); store('toc_hidden','1'); }
    labelToc(); onScroll();
  });
  labelToc();

  var brt=document.getElementById('ratetog');
  if(read('ratings_hidden')==='1') body.classList.add('badges-off');
  function labelRat(){ brt.textContent = body.classList.contains('badges-off') ? 'Show ratings':'Hide ratings'; }
  brt.addEventListener('click',function(){
    body.classList.toggle('badges-off');
    store('ratings_hidden', body.classList.contains('badges-off')?'1':'0');
    labelRat();
  });
  labelRat();
})();
