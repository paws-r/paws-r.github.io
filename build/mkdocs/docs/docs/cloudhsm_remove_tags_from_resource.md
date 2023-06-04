<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is documentation for AWS CloudHSM Classic

### Description

This is documentation for **AWS CloudHSM Classic**. For more
information, see [AWS CloudHSM Classic
FAQs](https://aws.amazon.com/cloudhsm/faqs/), the AWS CloudHSM Classic
User Guide, and the [AWS CloudHSM Classic API
Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS
CloudHSM](https://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the
[AWS CloudHSM API
Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Removes one or more tags from the specified AWS CloudHSM resource.

To remove a tag, specify only the tag key to remove (not the value). To
overwrite the value for an existing tag, use `add_tags_to_resource`.

### Usage

    cloudhsm_remove_tags_from_resource(ResourceArn, TagKeyList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsm_remove_tags_from_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the AWS CloudHSM
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_remove_tags_from_resource_:_TagKeyList">TagKeyList</code></td>
<td><p>[required] The tag key or keys to remove.</p>
<p>Specify only the tag key to remove (not the value). To overwrite the
value for an existing tag, use
<code>add_tags_to_resource</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "string"
    )

### Request syntax

    svc$remove_tags_from_resource(
      ResourceArn = "string",
      TagKeyList = list(
        "string"
      )
    )
