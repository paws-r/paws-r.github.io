<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_put_kms_encryption_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies the KMS key to be used to encrypt content in Amazon Fraud Detector

### Description

Specifies the KMS key to be used to encrypt content in Amazon Fraud
Detector.

### Usage

    frauddetector_put_kms_encryption_key(kmsEncryptionKeyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_put_kms_encryption_key_:_kmsEncryptionKeyArn">kmsEncryptionKeyArn</code></td>
<td><p>[required] The KMS encryption key ARN.</p>
<p>The KMS key must be single-Region key. Amazon Fraud Detector does not
support multi-Region KMS key.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_kms_encryption_key(
      kmsEncryptionKeyArn = "string"
    )
