<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_describe_addon_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration options

### Description

Returns configuration options.

### Usage

    eks_describe_addon_configuration(addonName, addonVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_describe_addon_configuration_:_addonName">addonName</code></td>
<td><p>[required] The name of the add-on. The name must match one of the
names that <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html"><code>describe_addon_versions</code></a>
returns.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_describe_addon_configuration_:_addonVersion">addonVersion</code></td>
<td><p>[required] The version of the add-on. The version must match one
of the versions returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html"><code>describe_addon_versions</code></a>
.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      addonName = "string",
      addonVersion = "string",
      configurationSchema = "string"
    )

### Request syntax

    svc$describe_addon_configuration(
      addonName = "string",
      addonVersion = "string"
    )
