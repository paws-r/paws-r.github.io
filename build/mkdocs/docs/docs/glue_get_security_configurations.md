<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_security_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all security configurations

### Description

Retrieves a list of all security configurations.

### Usage

    glue_get_security_configurations(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_security_configurations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_security_configurations_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityConfigurations = list(
        list(
          Name = "string",
          CreatedTimeStamp = as.POSIXct(
            "2015-01-01"
          ),
          EncryptionConfiguration = list(
            S3Encryption = list(
              list(
                S3EncryptionMode = "DISABLED"|"SSE-KMS"|"SSE-S3",
                KmsKeyArn = "string"
              )
            ),
            CloudWatchEncryption = list(
              CloudWatchEncryptionMode = "DISABLED"|"SSE-KMS",
              KmsKeyArn = "string"
            ),
            JobBookmarksEncryption = list(
              JobBookmarksEncryptionMode = "DISABLED"|"CSE-KMS",
              KmsKeyArn = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_security_configurations(
      MaxResults = 123,
      NextToken = "string"
    )
