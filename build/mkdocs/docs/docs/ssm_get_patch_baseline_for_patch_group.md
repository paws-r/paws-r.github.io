<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_patch_baseline_for_patch_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the patch baseline that should be used for the specified patch group

### Description

Retrieves the patch baseline that should be used for the specified patch
group.

### Usage

    ssm_get_patch_baseline_for_patch_group(PatchGroup, OperatingSystem)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_patch_baseline_for_patch_group_:_PatchGroup">PatchGroup</code></td>
<td><p>[required] The name of the patch group whose patch baseline
should be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_patch_baseline_for_patch_group_:_OperatingSystem">OperatingSystem</code></td>
<td><p>Returns the operating system rule specified for patch groups
using the patch baseline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BaselineId = "string",
      PatchGroup = "string",
      OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023"
    )

### Request syntax

    svc$get_patch_baseline_for_patch_group(
      PatchGroup = "string",
      OperatingSystem = "WINDOWS"|"AMAZON_LINUX"|"AMAZON_LINUX_2"|"AMAZON_LINUX_2022"|"UBUNTU"|"REDHAT_ENTERPRISE_LINUX"|"SUSE"|"CENTOS"|"ORACLE_LINUX"|"DEBIAN"|"MACOS"|"RASPBIAN"|"ROCKY_LINUX"|"ALMA_LINUX"|"AMAZON_LINUX_2023"
    )
