var lockstep = new Lockstep({
  foo: 'bar',
  baz: 'bat',
  step: function(info) {
    console.log(info);
  }
});
