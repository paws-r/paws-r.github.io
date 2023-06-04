<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_create_workload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new workload

### Description

Create a new workload.

The owner of a workload can share the workload with other Amazon Web
Services accounts, users, an organization, and organizational units
(OUs) in the same Amazon Web Services Region. Only the owner of a
workload can delete it.

For more information, see [Defining a
Workload](https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html)
in the *Well-Architected Tool User Guide*.

Either `AwsRegions`, `NonAwsRegions`, or both must be specified when
creating a workload.

You also must specify `ReviewOwner`, even though the parameter is listed
as not being required in the following section.

### Usage

    wellarchitected_create_workload(WorkloadName, Description, Environment,
      AccountIds, AwsRegions, NonAwsRegions, PillarPriorities,
      ArchitecturalDesign, ReviewOwner, IndustryType, Industry, Lenses, Notes,
      ClientRequestToken, Tags, DiscoveryConfig, Applications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_WorkloadName">WorkloadName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_Description">Description</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_Environment">Environment</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_AccountIds">AccountIds</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_AwsRegions">AwsRegions</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_NonAwsRegions">NonAwsRegions</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_PillarPriorities">PillarPriorities</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_ArchitecturalDesign">ArchitecturalDesign</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_ReviewOwner">ReviewOwner</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_IndustryType">IndustryType</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_Industry">Industry</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_Lenses">Lenses</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code id="wellarchitected_create_workload_:_Notes">Notes</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code id="wellarchitected_create_workload_:_Tags">Tags</code></td>
<td><p>The tags to be associated with the workload.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_create_workload_:_DiscoveryConfig">DiscoveryConfig</code></td>
<td><p>Well-Architected discovery configuration settings associated to
the workload.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_create_workload_:_Applications">Applications</code></td>
<td><p>List of AppRegistry application ARNs associated to the
workload.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkloadId = "string",
      WorkloadArn = "string"
    )

### Request syntax

    svc$create_workload(
      WorkloadName = "string",
      Description = "string",
      Environment = "PRODUCTION"|"PREPRODUCTION",
      AccountIds = list(
        "string"
      ),
      AwsRegions = list(
        "string"
      ),
      NonAwsRegions = list(
        "string"
      ),
      PillarPriorities = list(
        "string"
      ),
      ArchitecturalDesign = "string",
      ReviewOwner = "string",
      IndustryType = "string",
      Industry = "string",
      Lenses = list(
        "string"
      ),
      Notes = "string",
      ClientRequestToken = "string",
      Tags = list(
        "string"
      ),
      DiscoveryConfig = list(
        TrustedAdvisorIntegrationStatus = "ENABLED"|"DISABLED",
        WorkloadResourceDefinition = list(
          "WORKLOAD_METADATA"|"APP_REGISTRY"
        )
      ),
      Applications = list(
        "string"
      )
    )
