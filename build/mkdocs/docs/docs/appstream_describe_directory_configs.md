<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_directory_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more specified Directory Config objects for AppStream 2

### Description

Retrieves a list that describes one or more specified Directory Config
objects for AppStream 2.0, if the names for these objects are provided.
Otherwise, all Directory Config objects in the account are described.
These objects include the configuration information required to join
fleets and image builders to Microsoft Active Directory domains.

Although the response syntax in this topic includes the account
password, this password is not returned in the actual response.

### Usage

    appstream_describe_directory_configs(DirectoryNames, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_directory_configs_:_DirectoryNames">DirectoryNames</code></td>
<td><p>The directory names.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_directory_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_directory_configs_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryConfigs = list(
        list(
          DirectoryName = "string",
          OrganizationalUnitDistinguishedNames = list(
            "string"
          ),
          ServiceAccountCredentials = list(
            AccountName = "string",
            AccountPassword = "string"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          CertificateBasedAuthProperties = list(
            Status = "DISABLED"|"ENABLED"|"ENABLED_NO_DIRECTORY_LOGIN_FALLBACK",
            CertificateAuthorityArn = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_directory_configs(
      DirectoryNames = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
