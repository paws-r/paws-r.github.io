<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_update_studio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon EMR Studio configuration, including attributes such as name, description, and subnets

### Description

Updates an Amazon EMR Studio configuration, including attributes such as
name, description, and subnets.

### Usage

    emr_update_studio(StudioId, Name, Description, SubnetIds,
      DefaultS3Location)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_update_studio_:_StudioId">StudioId</code></td>
<td><p>[required] The ID of the Amazon EMR Studio to update.</p></td>
</tr>
<tr class="even">
<td><code id="emr_update_studio_:_Name">Name</code></td>
<td><p>A descriptive name for the Amazon EMR Studio.</p></td>
</tr>
<tr class="odd">
<td><code id="emr_update_studio_:_Description">Description</code></td>
<td><p>A detailed description to assign to the Amazon EMR
Studio.</p></td>
</tr>
<tr class="even">
<td><code id="emr_update_studio_:_SubnetIds">SubnetIds</code></td>
<td><p>A list of subnet IDs to associate with the Amazon EMR Studio. The
list can include new subnet IDs, but must also include all of the subnet
IDs previously associated with the Studio. The list order does not
matter. A Studio can have a maximum of 5 subnets. The subnets must
belong to the same VPC as the Studio.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_update_studio_:_DefaultS3Location">DefaultS3Location</code></td>
<td><p>The Amazon S3 location to back up Workspaces and notebook files
for the Amazon EMR Studio.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_studio(
      StudioId = "string",
      Name = "string",
      Description = "string",
      SubnetIds = list(
        "string"
      ),
      DefaultS3Location = "string"
    )
