<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_create_luna_client</td>
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

Creates an HSM client.

### Usage

    cloudhsm_create_luna_client(Label, Certificate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_create_luna_client_:_Label">Label</code></td>
<td><p>The label for the client.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_create_luna_client_:_Certificate">Certificate</code></td>
<td><p>[required] The contents of a Base64-Encoded X.509 v3 certificate
to be installed on the HSMs used by this client.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientArn = "string"
    )

### Request syntax

    svc$create_luna_client(
      Label = "string",
      Certificate = "string"
    )
