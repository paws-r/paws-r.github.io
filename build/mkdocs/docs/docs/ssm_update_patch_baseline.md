<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_patch_baseline</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an existing patch baseline

### Description

Modifies an existing patch baseline. Fields not specified in the request
are left unchanged.

For information about valid key-value pairs in `PatchFilters` for each
supported operating system type, see PatchFilter.

### Usage

    ssm_update_patch_baseline(BaselineId, Name, GlobalFilters,
      ApprovalRules, ApprovedPatches, ApprovedPatchesComplianceLevel,
      ApprovedPatchesEnableNonSecurity, RejectedPatches,
      RejectedPatchesAction, Description, Sources, Replace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_patch_baseline_:_BaselineId">BaselineId</code></td>
<td><p>[required] The ID of the patch baseline to update.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_patch_baseline_:_Name">Name</code></td>
<td><p>The name of the patch baseline.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_patch_baseline_:_GlobalFilters">GlobalFilters</code></td>
<td><p>A set of global filters used to include patches in the
baseline.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_patch_baseline_:_ApprovalRules">ApprovalRules</code></td>
<td><p>A set of rules used to include patches in the baseline.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_patch_baseline_:_ApprovedPatches">ApprovedPatches</code></td>
<td><p>A list of explicitly approved patches for the baseline.</p>
<p>For information about accepted formats for lists of approved patches
and rejected patches, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
package name formats for approved and rejected patch lists</a> in the
<em>Amazon Web Services Systems Manager User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_patch_baseline_:_ApprovedPatchesComplianceLevel">ApprovedPatchesComplianceLevel</code></td>
<td><p>Assigns a new compliance severity level to an existing patch
baseline.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_patch_baseline_:_ApprovedPatchesEnableNonSecurity">ApprovedPatchesEnableNonSecurity</code></td>
<td><p>Indicates whether the list of approved patches includes
non-security updates that should be applied to the managed nodes. The
default value is <code>false</code>. Applies to Linux managed nodes
only.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_patch_baseline_:_RejectedPatches">RejectedPatches</code></td>
<td><p>A list of explicitly rejected patches for the baseline.</p>
<p>For information about accepted formats for lists of approved patches
and rejected patches, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager-approved-rejected-package-name-formats.html">About
package name formats for approved and rejected patch lists</a> in the
<em>Amazon Web Services Systems Manager User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_patch_baseline_:_RejectedPatchesAction">RejectedPatchesAction</code></td>
<td><p>The action for Patch Manager to take on patches included in the
<code>RejectedPackages</code> list.</p>
<ul>
<li><p><strong><code>ALLOW_AS_DEPENDENCY</code></strong> : A package in
the <code>Rejected</code> patches list is installed only if it is a
dependency of another package. It is considered compliant with the patch
baseline, and its status is reported as <code>InstalledOther</code>.
This is the default action if no option is specified.</p></li>
<li><p><strong><code>BLOCK</code></strong> : Packages in the
<code>RejectedPatches</code> list, and packages that include them as
dependencies, aren't installed under any circumstances. If a package was
installed before it was added to the <code>Rejected</code> patches list,
it is considered non-compliant with the patch baseline, and its status
is reported as <code>InstalledRejected</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_patch_baseline_:_Description">Description</code></td>
<td><p>A description of the patch baseline.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_patch_baseline_:_Sources">Sources</code></td>
<td><p>Information about the patches to use to update the managed nodes,
including target operating systems and source repositories. Applies to
Linux managed nodes only.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_patch_baseline_:_Replace">Replace</code></td>
<td><p>If True, then all fields that are required by the
<code>create_patch_baseline</code> operation are also required for this
API request. Optional fields that aren't specified are set to
null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaselineId = "string",
      Name = "string",
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
      ApprovedPatchesEnableNonSecurity = TRUE|FALSE,
      RejectedPatches = list(
        "string"
      ),
      RejectedPatchesAction = "ALLOW_AS_DEPENDENCY"|"BLOCK",
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      ModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
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

### Request syntax

    svc$update_patch_baseline(
      BaselineId = "string",
      Name = "string",
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
      ApprovedPatchesEnableNonSecurity = TRUE|FALSE,
      RejectedPatches = list(
        "string"
      ),
      RejectedPatchesAction = "ALLOW_AS_DEPENDENCY"|"BLOCK",
      Description = "string",
      Sources = list(
        list(
          Name = "string",
          Products = list(
            "string"
          ),
          Configuration = "string"
        )
      ),
      Replace = TRUE|FALSE
    )
