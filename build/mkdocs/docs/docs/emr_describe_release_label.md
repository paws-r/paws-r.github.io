<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_release_label</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides Amazon EMR release label details, such as the releases available the Region where the API request is run, and the available applications for a specific Amazon EMR release label

### Description

Provides Amazon EMR release label details, such as the releases
available the Region where the API request is run, and the available
applications for a specific Amazon EMR release label. Can also list
Amazon EMR releases that support a specified version of Spark.

### Usage

    emr_describe_release_label(ReleaseLabel, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_describe_release_label_:_ReleaseLabel">ReleaseLabel</code></td>
<td><p>The target release label to be described.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_describe_release_label_:_NextToken">NextToken</code></td>
<td><p>The pagination token. Reserved for future use. Currently set to
null.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_describe_release_label_:_MaxResults">MaxResults</code></td>
<td><p>Reserved for future use. Currently set to null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReleaseLabel = "string",
      Applications = list(
        list(
          Name = "string",
          Version = "string"
        )
      ),
      NextToken = "string",
      AvailableOSReleases = list(
        list(
          Label = "string"
        )
      )
    )

### Request syntax

    svc$describe_release_label(
      ReleaseLabel = "string",
      NextToken = "string",
      MaxResults = 123
    )
