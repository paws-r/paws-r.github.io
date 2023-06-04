<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_add_region</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds two domain controllers in the specified Region for the specified directory

### Description

Adds two domain controllers in the specified Region for the specified
directory.

### Usage

    directoryservice_add_region(DirectoryId, RegionName, VPCSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_add_region_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory to which you want to
add Region replication.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_add_region_:_RegionName">RegionName</code></td>
<td><p>[required] The name of the Region where you want to add domain
controllers for replication. For example,
<code>us-east-1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_add_region_:_VPCSettings">VPCSettings</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_region(
      DirectoryId = "string",
      RegionName = "string",
      VPCSettings = list(
        VpcId = "string",
        SubnetIds = list(
          "string"
        )
      )
    )
