<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the specified license configuration

### Description

Removes the specified tags from the specified license configuration.

### Usage

    licensemanager_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Keys identifying the tags to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
