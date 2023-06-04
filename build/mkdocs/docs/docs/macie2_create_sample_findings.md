<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_sample_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates sample findings

### Description

Creates sample findings.

### Usage

    macie2_create_sample_findings(findingTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_create_sample_findings_:_findingTypes">findingTypes</code></td>
<td><p>An array of finding types, one for each type of sample finding to
create. To create a sample of every type of finding that Amazon Macie
supports, don't include this array in your request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_sample_findings(
      findingTypes = list(
        "SensitiveData:S3Object/Multiple"|"SensitiveData:S3Object/Financial"|"SensitiveData:S3Object/Personal"|"SensitiveData:S3Object/Credentials"|"SensitiveData:S3Object/CustomIdentifier"|"Policy:IAMUser/S3BucketPublic"|"Policy:IAMUser/S3BucketSharedExternally"|"Policy:IAMUser/S3BucketReplicatedExternally"|"Policy:IAMUser/S3BucketEncryptionDisabled"|"Policy:IAMUser/S3BlockPublicAccessDisabled"|"Policy:IAMUser/S3BucketSharedWithCloudFront"
      )
    )
