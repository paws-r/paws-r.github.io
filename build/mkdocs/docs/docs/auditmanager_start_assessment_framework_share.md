<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_start_assessment_framework_share</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a share request for a custom framework in Audit Manager

### Description

Creates a share request for a custom framework in Audit Manager.

The share request specifies a recipient and notifies them that a custom
framework is available. Recipients have 120 days to accept or decline
the request. If no action is taken, the share request expires.

When you create a share request, Audit Manager stores a snapshot of your
custom framework in the US East (N. Virginia) Amazon Web Services
Region. Audit Manager also stores a backup of the same snapshot in the
US West (Oregon) Amazon Web Services Region.

Audit Manager deletes the snapshot and the backup snapshot when one of
the following events occurs:

-   The sender revokes the share request.

-   The recipient declines the share request.

-   The recipient encounters an error and doesn't successfully accept
    the share request.

-   The share request expires before the recipient responds to the
    request.

When a sender [resends a share
request](https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend),
the snapshot is replaced with an updated version that corresponds with
the latest version of the custom framework.

When a recipient accepts a share request, the snapshot is replicated
into their Amazon Web Services account under the Amazon Web Services
Region that was specified in the share request.

When you invoke the `start_assessment_framework_share` API, you are
about to share a custom framework with another Amazon Web Services
account. You may not share a custom framework that is derived from a
standard framework if the standard framework is designated as not
eligible for sharing by Amazon Web Services, unless you have obtained
permission to do so from the owner of the standard framework. To learn
more about which standard frameworks are eligible for sharing, see
[Framework sharing
eligibility](https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility)
in the *Audit Manager User Guide*.

### Usage

    auditmanager_start_assessment_framework_share(frameworkId,
      destinationAccount, destinationRegion, comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_start_assessment_framework_share_:_frameworkId">frameworkId</code></td>
<td><p>[required] The unique identifier for the custom framework to be
shared.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_start_assessment_framework_share_:_destinationAccount">destinationAccount</code></td>
<td><p>[required] The Amazon Web Services account of the
recipient.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_start_assessment_framework_share_:_destinationRegion">destinationRegion</code></td>
<td><p>[required] The Amazon Web Services Region of the
recipient.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_start_assessment_framework_share_:_comment">comment</code></td>
<td><p>An optional comment from the sender about the share
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentFrameworkShareRequest = list(
        id = "string",
        frameworkId = "string",
        frameworkName = "string",
        frameworkDescription = "string",
        status = "ACTIVE"|"REPLICATING"|"SHARED"|"EXPIRING"|"FAILED"|"EXPIRED"|"DECLINED"|"REVOKED",
        sourceAccount = "string",
        destinationAccount = "string",
        destinationRegion = "string",
        expirationTime = as.POSIXct(
          "2015-01-01"
        ),
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdated = as.POSIXct(
          "2015-01-01"
        ),
        comment = "string",
        standardControlsCount = 123,
        customControlsCount = 123,
        complianceType = "string"
      )
    )

### Request syntax

    svc$start_assessment_framework_share(
      frameworkId = "string",
      destinationAccount = "string",
      destinationRegion = "string",
      comment = "string"
    )
