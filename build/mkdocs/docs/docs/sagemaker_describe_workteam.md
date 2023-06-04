<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_workteam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specific work team

### Description

Gets information about a specific work team. You can see information
such as the create date, the last updated date, membership information,
and the work team's Amazon Resource Name (ARN).

### Usage

    sagemaker_describe_workteam(WorkteamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_workteam_:_WorkteamName">WorkteamName</code></td>
<td><p>[required] The name of the work team to return a description
of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workteam = list(
        WorkteamName = "string",
        MemberDefinitions = list(
          list(
            CognitoMemberDefinition = list(
              UserPool = "string",
              UserGroup = "string",
              ClientId = "string"
            ),
            OidcMemberDefinition = list(
              Groups = list(
                "string"
              )
            )
          )
        ),
        WorkteamArn = "string",
        WorkforceArn = "string",
        ProductListingIds = list(
          "string"
        ),
        Description = "string",
        SubDomain = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedDate = as.POSIXct(
          "2015-01-01"
        ),
        NotificationConfiguration = list(
          NotificationTopicArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_workteam(
      WorkteamName = "string"
    )
