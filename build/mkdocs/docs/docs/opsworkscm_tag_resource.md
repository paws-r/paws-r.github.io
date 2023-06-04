<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server, or to server backups

### Description

Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for
Puppet Enterprise server, or to server backups.

### Usage

    opsworkscm_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of a resource to
which you want to apply tags. For example, <code
style="white-space: pre;">⁠arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="opsworkscm_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A map that contains tag keys and tag values to attach
to AWS OpsWorks-CM servers or backups.</p>
<ul>
<li><p>The key cannot be empty.</p></li>
<li><p>The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : /⁠</code></p></li>
<li><p>The value can be a maximum 255 characters, and contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : /⁠</code></p></li>
<li><p>Leading and trailing white spaces are trimmed from both the key
and value.</p></li>
<li><p>A maximum of 50 user-applied tags is allowed for any AWS
OpsWorks-CM server or backup.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
