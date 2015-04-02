# M/Monit cookbook

Installs M/Monit, the easy, proactive monitoring of Unix systems, network and cloud services.

## Supported Platforms

Currently, only Ubuntu >= 12.04 is tested.

Pull requests are welcome to support more platforms.

## Attributes

Please refer to the `attributes/default.rb` file for now.

## Usage

Simply include `mmonit` in a role or in your node's run_list :

```
{
  "name":"my_node",
  "run_list": [
  "recipe[mmonit::default]"
  ]
}
```

Or include the recipe in a wrapper cookbook :

`include_recipe 'mmonit'`

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Submit a Pull Request

## About

![image](http://lodgem.s3.amazonaws.com/tm/logotype.png)

Lodgem is small team of passionate who enjoy creating polished applications that solve interesting problems. We consider ourselves as friendly, hard workers and dynamic. We love to see things differently and strongly believe in progress and innovation.

At Lodgem, we use open source software a lot and that's why we try hard to share as much as possible.

## License

`chef-mmonit` is © [Lodgem Inc.](http://www.lodgem.com) It is free software and may be redistributed under the terms specified in the LICENSE file.
