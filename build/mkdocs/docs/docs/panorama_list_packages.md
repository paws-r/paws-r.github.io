<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>panorama_list_packages</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of packages

### Description

Returns a list of packages.

### Usage

    panorama_list_packages(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="panorama_list_packages_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of packages to return in one page of
results.</p></td>
</tr>
<tr class="even">
<td><code id="panorama_list_packages_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Packages = list(
        list(
          Arn = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          PackageId = "string",
          PackageName = "string",
          Tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_packages(
      MaxResults = 123,
      NextToken = "string"
    )
