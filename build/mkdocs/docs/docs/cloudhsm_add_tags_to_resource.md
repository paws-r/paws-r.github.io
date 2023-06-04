<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_add_tags_to_resource</td>
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

Adds or overwrites one or more tags for the specified AWS CloudHSM
resource.

Each tag consists of a key and a value. Tag keys must be unique to each
resource.

### Usage

    cloudhsm_add_tags_to_resource(ResourceArn, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsm_add_tags_to_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the AWS CloudHSM
resource to tag.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_add_tags_to_resource_:_TagList">TagList</code></td>
<td><p>[required] One or more tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "string"
    )

### Request syntax

    svc$add_tags_to_resource(
      ResourceArn = "string",
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
