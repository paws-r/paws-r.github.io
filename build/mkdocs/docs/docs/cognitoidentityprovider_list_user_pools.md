<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_list_user_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the user pools associated with an Amazon Web Services account

### Description

Lists the user pools associated with an Amazon Web Services account.

### Usage

    cognitoidentityprovider_list_user_pools(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_list_user_pools_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_list_user_pools_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of results you want the request to
return when listing the user pools.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserPools = list(
        list(
          Id = "string",
          Name = "string",
          LambdaConfig = list(
            PreSignUp = "string",
            CustomMessage = "string",
            PostConfirmation = "string",
            PreAuthentication = "string",
            PostAuthentication = "string",
            DefineAuthChallenge = "string",
            CreateAuthChallenge = "string",
            VerifyAuthChallengeResponse = "string",
            PreTokenGeneration = "string",
            UserMigration = "string",
            CustomSMSSender = list(
              LambdaVersion = "V1_0",
              LambdaArn = "string"
            ),
            CustomEmailSender = list(
              LambdaVersion = "V1_0",
              LambdaArn = "string"
            ),
            KMSKeyID = "string"
          ),
          Status = "Enabled"|"Disabled",
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          CreationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_user_pools(
      NextToken = "string",
      MaxResults = 123
    )
