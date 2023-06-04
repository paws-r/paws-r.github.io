<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_virtual_mfa_devices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status

### Description

Lists the virtual MFA devices defined in the Amazon Web Services account
by assignment status. If you do not specify an assignment status, the
operation returns a list of all virtual MFA devices. Assignment status
can be `Assigned`, `Unassigned`, or `Any`.

IAM resource-listing operations return a subset of the available
attributes for the resource. For example, this operation does not return
tags, even though they are an attribute of the returned object. To view
tag information for a virtual MFA device, see `list_mfa_device_tags`.

You can paginate the results using the `MaxItems` and `Marker`
parameters.

### Usage

    iam_list_virtual_mfa_devices(AssignmentStatus, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_virtual_mfa_devices_:_AssignmentStatus">AssignmentStatus</code></td>
<td><p>The status (<code>Unassigned</code> or <code>Assigned</code>) of
the devices to list. If you do not specify an
<code>AssignmentStatus</code>, the operation defaults to
<code>Any</code>, which lists both assigned and unassigned virtual MFA
devices.,</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_virtual_mfa_devices_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_list_virtual_mfa_devices_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VirtualMFADevices = list(
        list(
          SerialNumber = "string",
          Base32StringSeed = raw,
          QRCodePNG = raw,
          User = list(
            Path = "string",
            UserName = "string",
            UserId = "string",
            Arn = "string",
            CreateDate = as.POSIXct(
              "2015-01-01"
            ),
            PasswordLastUsed = as.POSIXct(
              "2015-01-01"
            ),
            PermissionsBoundary = list(
              PermissionsBoundaryType = "PermissionsBoundaryPolicy",
              PermissionsBoundaryArn = "string"
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          EnableDate = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_virtual_mfa_devices(
      AssignmentStatus = "Assigned"|"Unassigned"|"Any",
      Marker = "string",
      MaxItems = 123
    )

### Examples

    ## Not run: 
    # The following command lists the virtual MFA devices that have been
    # configured for the current account.
    svc$list_virtual_mfa_devices()

    ## End(Not run)
