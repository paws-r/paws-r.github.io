<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a cluster

### Description

Adds tags to a cluster.

A resource can have up to 50 tags. If you try to create more than 50
tags for a resource, you will receive an error and the attempt will
fail.

If you specify a key that already exists for the resource, the value for
that key will be updated with the new value.

### Usage

    redshift_create_tags(ResourceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_tags_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon Resource Name (ARN) to which you want to
add the tag or tags. For example,
<code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_tags_:_Tags">Tags</code></td>
<td><p>[required] One or more name/value pairs to add as tags to the
specified resource. Each tag name is passed in with the parameter
<code>Key</code> and the corresponding value is passed in with the
parameter <code>Value</code>. The <code>Key</code> and
<code>Value</code> parameters are separated by a comma (,). Separate
multiple tags with a space. For example, <code
style="white-space: pre;">⁠--tags "Key"="owner","Value"="admin" "Key"="environment","Value"="test" "Key"="version","Value"="1.0"⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_tags(
      ResourceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
