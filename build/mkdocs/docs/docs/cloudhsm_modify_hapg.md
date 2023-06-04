<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_modify_hapg</td>
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

Modifies an existing high-availability partition group.

### Usage

    cloudhsm_modify_hapg(HapgArn, Label, PartitionSerialList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_modify_hapg_:_HapgArn">HapgArn</code></td>
<td><p>[required] The ARN of the high-availability partition group to
modify.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_modify_hapg_:_Label">Label</code></td>
<td><p>The new label for the high-availability partition group.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudhsm_modify_hapg_:_PartitionSerialList">PartitionSerialList</code></td>
<td><p>The list of partition serial numbers to make members of the
high-availability partition group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HapgArn = "string"
    )

### Request syntax

    svc$modify_hapg(
      HapgArn = "string",
      Label = "string",
      PartitionSerialList = list(
        "string"
      )
    )
