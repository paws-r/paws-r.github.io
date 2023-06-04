<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_kms_encryption_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the encryption key if a KMS key has been specified to be used to encrypt content in Amazon Fraud Detector

### Description

Gets the encryption key if a KMS key has been specified to be used to
encrypt content in Amazon Fraud Detector.

### Usage

    frauddetector_get_kms_encryption_key()

### Value

A list with the following syntax:

    list(
      kmsKey = list(
        kmsEncryptionKeyArn = "string"
      )
    )
