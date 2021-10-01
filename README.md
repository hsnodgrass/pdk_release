# PDK Release docker action

Github Action for releasing Puppet modules. It contains the require dependencies for running `pdk release <release-action> --force` on a module.

## Inputs

### `release-action`

**required** The pdk release action to take, either `prep` or `publish`. Default `prep`. The only tested value for this input is `prep`, so use `publish` at your own risk.

## Example usage

```yaml
- name: "PDK Release prep"
  uses: hsnodgrass/pdk_release@v1
  with:
    release-action: 'prep'
  env:
    CHANGELOG_GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
