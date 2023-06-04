<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies tags to an existing Amazon Web Services X-Ray group or sampling rule

### Description

Applies tags to an existing Amazon Web Services X-Ray group or sampling
rule.

### Usage

    xray_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of an X-Ray group or
sampling rule.</p></td>
</tr>
<tr class="even">
<td><code id="xray_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A map that contains one or more tag keys and tag
values to attach to an X-Ray group or sampling rule. For more
information about ways to use tags, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference</em>.</p>
<p>The following restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of user-applied tags per resource: 50</p></li>
<li><p>Maximum tag key length: 128 Unicode characters</p></li>
<li><p>Maximum tag value length: 256 Unicode characters</p></li>
<li><p>Valid values for key and value: a-z, A-Z, 0-9, space, and the
following characters: _ . : / = + - and @</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Don't use <code style="white-space: pre;">⁠aws:⁠</code> as a prefix
for keys; it's reserved for Amazon Web Services use. You cannot edit or
delete system tags.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
