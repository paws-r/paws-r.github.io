<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_parameter_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the history of all changes to a parameter

### Description

Retrieves the history of all changes to a parameter.

If you change the KMS key alias for the KMS key used to encrypt a
parameter, then you must also update the key alias the parameter uses to
reference KMS. Otherwise, `get_parameter_history` retrieves whatever the
original key alias was referencing.

### Usage

    ssm_get_parameter_history(Name, WithDecryption, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_parameter_history_:_Name">Name</code></td>
<td><p>[required] The name of the parameter for which you want to review
history.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameter_history_:_WithDecryption">WithDecryption</code></td>
<td><p>Return decrypted values for secure string parameters. This flag
is ignored for <code>String</code> and <code>StringList</code> parameter
types.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_parameter_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_parameter_history_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Parameters = list(
        list(
          Name = "string",
          Type = "String"|"StringList"|"SecureString",
          KeyId = "string",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedUser = "string",
          Description = "string",
          Value = "string",
          AllowedPattern = "string",
          Version = 123,
          Labels = list(
            "string"
          ),
          Tier = "Standard"|"Advanced"|"Intelligent-Tiering",
          Policies = list(
            list(
              PolicyText = "string",
              PolicyType = "string",
              PolicyStatus = "string"
            )
          ),
          DataType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_parameter_history(
      Name = "string",
      WithDecryption = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )
