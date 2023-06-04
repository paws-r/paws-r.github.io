<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_studio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details for the specified Amazon EMR Studio including ID, Name, VPC, Studio access URL, and so on

### Description

Returns details for the specified Amazon EMR Studio including ID, Name,
VPC, Studio access URL, and so on.

### Usage

    emr_describe_studio(StudioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_describe_studio_:_StudioId">StudioId</code></td>
<td><p>[required] The Amazon EMR Studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Studio = list(
        StudioId = "string",
        StudioArn = "string",
        Name = "string",
        Description = "string",
        AuthMode = "SSO"|"IAM",
        VpcId = "string",
        SubnetIds = list(
          "string"
        ),
        ServiceRole = "string",
        UserRole = "string",
        WorkspaceSecurityGroupId = "string",
        EngineSecurityGroupId = "string",
        Url = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        DefaultS3Location = "string",
        IdpAuthUrl = "string",
        IdpRelayStateParameterName = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_studio(
      StudioId = "string"
    )
