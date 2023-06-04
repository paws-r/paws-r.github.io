<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_deployable_patch_snapshot_for_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the current snapshot for the patch baseline the managed node uses

### Description

Retrieves the current snapshot for the patch baseline the managed node
uses. This API is primarily used by the `AWS-RunPatchBaseline` Systems
Manager document (SSM document).

If you run the command locally, such as with the Command Line Interface
(CLI), the system attempts to use your local Amazon Web Services
credentials and the operation fails. To avoid this, you can run the
command in the Amazon Web Services Systems Manager console. Use Run
Command, a capability of Amazon Web Services Systems Manager, with an
SSM document that enables you to target a managed node with a script or
command. For example, run the command using the `AWS-RunShellScript`
document or the `AWS-RunPowerShellScript` document.

### Usage

    ssm_get_deployable_patch_snapshot_for_instance(InstanceId, SnapshotId,
      BaselineOverride)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_deployable_patch_snapshot_for_instance_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the managed node for which the appropriate
patch snapshot should be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_deployable_patch_snapshot_for_instance_:_SnapshotId">SnapshotId</code></td>
<td><p>[required] The snapshot ID provided by the user when running
<code>AWS-RunPatchBaseline</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_deployable_patch_snapshot_for_instance_:_BaselineOverride">BaselineOverride</code></td>
<td><p>Defines the basic information about a patch baseline
override.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceId = "string",
      SnapshotId = "string",
      SnapshotDownloadUrl = "string",
      Product = "string"
    )

### Request syntax

    svc$get_deployable_patch_snapshot_for_instance(
      InstanceId = "string",
      SnapshotId = "string",
      BaselineOverride = list(
        OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023",
        GlobalFilters = list(
          PatchFilters = list(
            list(
              Key = "ARCH"|"ADVISORY_ID"|"BUGZILLA_ID"|"PATCH_SET"|"PRODUCT"|"PRODUCT_FAMILY"|"CLASSIFICATION"|"CVE_ID"|"EPOCH"|"MSRC_SEVERITY"|"NAME"|"PATCH_ID"|"SECTION"|"PRIORITY"|"REPOSITORY"|"RELEASE"|"SEVERITY"|"SECURITY"|"VERSION",
              Values = list(
                "string"
              )
            )
          )
        ),
        ApprovalRules = list(
          PatchRules = list(
            list(
              PatchFilterGroup = list(
                PatchFilters = list(
                  list(
                    Key = "ARCH"|"ADVISORY_ID"|"BUGZILLA_ID"|"PATCH_SET"|"PRODUCT"|"PRODUCT_FAMILY"|"CLASSIFICATION"|"CVE_ID"|"EPOCH"|"MSRC_SEVERITY"|"NAME"|"PATCH_ID"|"SECTION"|"PRIORITY"|"REPOSITORY"|"RELEASE"|"SEVERITY"|"SECURITY"|"VERSION",
                    Values = list(
                      "string"
                    )
                  )
                )
              ),
              ComplianceLevel = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
              ApproveAfterDays = 123,
              ApproveUntilDate = "string",
              EnableNonSecurity = TRUE|FALSE
            )
          )
        ),
        ApprovedPatches = list(
          "string"
        ),
        ApprovedPatchesComplianceLevel = "CRITICAL"|"HIGH"|"MEDIUM"|"LOW"|"INFORMATIONAL"|"UNSPECIFIED",
        RejectedPatches = list(
          "string"
        ),
        RejectedPatchesAction = "ALLOW_AS_DEPENDENCY"|"BLOCK",
        ApprovedPatchesEnableNonSecurity = TRUE|FALSE,
        Sources = list(
          list(
            Name = "string",
            Products = list(
              "string"
            ),
            Configuration = "string"
          )
        )
      )
    )
