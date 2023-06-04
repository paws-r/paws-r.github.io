<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove a customer tag from a resource

### Description

Remove a customer tag from a resource. A tag is a key-value pair of
metadata associated with an Proton resource.

For more information, see [Proton resources and
tagging](https://docs.aws.amazon.com/proton/latest/userguide/resources.html)
in the *Proton User Guide*.

### Usage

    proton_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
remove customer tags from.</p></td>
</tr>
<tr class="even">
<td><code id="proton_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] A list of customer tag keys that indicate the customer
tags to be removed from the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
