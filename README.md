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

## License

It is free software and may be redistributed under the terms specified in the LICENSE file.
