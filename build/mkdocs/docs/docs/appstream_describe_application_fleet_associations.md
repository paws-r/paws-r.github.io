<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_describe_application_fleet_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more application fleet associations

### Description

Retrieves a list that describes one or more application fleet
associations. Either ApplicationArn or FleetName must be specified.

### Usage

    appstream_describe_application_fleet_associations(FleetName,
      ApplicationArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_describe_application_fleet_associations_:_FleetName">FleetName</code></td>
<td><p>The name of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_application_fleet_associations_:_ApplicationArn">ApplicationArn</code></td>
<td><p>The ARN of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_describe_application_fleet_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of each page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_describe_application_fleet_associations_:_NextToken">NextToken</code></td>
<td><p>The pagination token used to retrieve the next page of results
for this operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationFleetAssociations = list(
        list(
          FleetName = "string",
          ApplicationArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_application_fleet_associations(
      FleetName = "string",
      ApplicationArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
