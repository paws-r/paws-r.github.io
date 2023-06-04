<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_describe_luna_client</td>
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

Retrieves information about an HSM client.

### Usage

    cloudhsm_describe_luna_client(ClientArn, CertificateFingerprint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsm_describe_luna_client_:_ClientArn">ClientArn</code></td>
<td><p>The ARN of the client.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_describe_luna_client_:_CertificateFingerprint">CertificateFingerprint</code></td>
<td><p>The certificate fingerprint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientArn = "string",
      Certificate = "string",
      CertificateFingerprint = "string",
      LastModifiedTimestamp = "string",
      Label = "string"
    )

### Request syntax

    svc$describe_luna_client(
      ClientArn = "string",
      CertificateFingerprint = "string"
    )
