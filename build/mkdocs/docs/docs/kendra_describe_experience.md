<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_experience</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about your Amazon Kendra experience such as a search application

### Description

Gets information about your Amazon Kendra experience such as a search
application. For more information on creating a search application
experience, see [Building a search experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_describe_experience(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_describe_experience_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra experience you
want to get information on.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_describe_experience_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string",
      IndexId = "string",
      Name = "string",
      Endpoints = list(
        list(
          EndpointType = "HOME",
          Endpoint = "string"
        )
      ),
      Configuration = list(
        ContentSourceConfiguration = list(
          DataSourceIds = list(
            "string"
          ),
          FaqIds = list(
            "string"
          ),
          DirectPutContent = TRUE|FALSE
        ),
        UserIdentityConfiguration = list(
          IdentityAttributeName = "string"
        )
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      Status = "CREATING"|"ACTIVE"|"DELETING"|"FAILED",
      RoleArn = "string",
      ErrorMessage = "string"
    )

### Request syntax

    svc$describe_experience(
      Id = "string",
      IndexId = "string"
    )
