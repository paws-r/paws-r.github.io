<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_delete_hapg</td>
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

Deletes a high-availability partition group.

### Usage

    cloudhsm_delete_hapg(HapgArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_delete_hapg_:_HapgArn">HapgArn</code></td>
<td><p>[required] The ARN of the high-availability partition group to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "string"
    )

### Request syntax

    svc$delete_hapg(
      HapgArn = "string"
    )
