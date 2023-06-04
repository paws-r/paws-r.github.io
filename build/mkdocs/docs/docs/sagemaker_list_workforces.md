<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_workforces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to list all private and vendor workforces in an Amazon Web Services Region

### Description

Use this operation to list all private and vendor workforces in an
Amazon Web Services Region. Note that you can only have one private
workforce per Amazon Web Services Region.

### Usage

    sagemaker_list_workforces(SortBy, SortOrder, NameContains, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_workforces_:_SortBy">SortBy</code></td>
<td><p>Sort workforces using the workforce name or creation
date.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_workforces_:_SortOrder">SortOrder</code></td>
<td><p>Sort workforces in ascending or descending order.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_workforces_:_NameContains">NameContains</code></td>
<td><p>A filter you can use to search for workforces using part of the
workforce name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_workforces_:_NextToken">NextToken</code></td>
<td><p>A token to resume pagination.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_workforces_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of workforces returned in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Workforces = list(
        list(
          WorkforceName = "string",
          WorkforceArn = "string",
          LastUpdatedDate = as.POSIXct(
            "2015-01-01"
          ),
          SourceIpConfig = list(
            Cidrs = list(
              "string"
            )
          ),
          SubDomain = "string",
          CognitoConfig = list(
            UserPool = "string",
            ClientId = "string"
          ),
          OidcConfig = list(
            ClientId = "string",
            Issuer = "string",
            AuthorizationEndpoint = "string",
            TokenEndpoint = "string",
            UserInfoEndpoint = "string",
            LogoutEndpoint = "string",
            JwksUri = "string"
          ),
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          WorkforceVpcConfig = list(
            VpcId = "string",
            SecurityGroupIds = list(
              "string"
            ),
            Subnets = list(
              "string"
            ),
            VpcEndpointId = "string"
          ),
          Status = "Initializing"|"Updating"|"Deleting"|"Failed"|"Active",
          FailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_workforces(
      SortBy = "Name"|"CreateDate",
      SortOrder = "Ascending"|"Descending",
      NameContains = "string",
      NextToken = "string",
      MaxResults = 123
    )
