<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes specified tags from an AWS OpsWorks-CM server or backup

### Description

Removes specified tags from an AWS OpsWorks-CM server or backup.

### Usage

    opsworkscm_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of a resource from
which you want to remove tags. For example, <code
style="white-space: pre;">⁠arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of tags that you want to remove.</p></td>
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
