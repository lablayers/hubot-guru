hubot-guru  
=============

[![Build Status][travis-badge]][travis]
[![npm-version][npm-badge]][npm]

A [Hubot] script that replies with facts from [Guru].

```
me > guru me address
hubot > Zivtech Address by Victor Lourng

The Philadelphia Building
1315 Walnut Street, Suite 1500
Philadelphia, PA 19107
```

Commands
--------

```
hubot guru <query>
```

Installation
------------

1. Add `hubot-guru` to dependencies.

  ```bash
  npm install --save hubot-guru
  ```

2. Update `external-scripts.json`

  ```json
  ["hubot-guru"]
  ```

Configuration
-------------

```
HUBOT_GURU_EMAIL
HUBOT_GURU_PASS
```

You can find your base64 encoded credentials by opening Guru and looking under Developer Tools > Network.

Author
------

[Victor Lourng]

License
-------

[MIT License]


[Hubot]: https://hubot.github.com/
[Victor Lourng]: http://victorlourng.com/
[MIT License]: LICENSE
[travis-badge]: https://api.travis-ci.org/LabLayers/hubot-guru.svg?branch=master
[npm-badge]: http://img.shields.io/npm/v/hubot-guru.svg
[travis]: https://travis-ci.org/lablayers/hubot-guru
[npm]: https://www.npmjs.org/package/hubot-guru
[Guru]: http://getguru.com/
