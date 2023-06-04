<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_get_subject</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a subject, which associates a certificate identity with authentication attempts

### Description

Gets a *subject*, which associates a certificate identity with
authentication attempts. The subject stores auditing information such as
the status of the last authentication attempt, the certificate data used
in the attempt, and the last time the associated identity attempted
authentication.

**Required permissions:** `rolesanywhere:GetSubject`.

### Usage

    iamrolesanywhere_get_subject(subjectId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_get_subject_:_subjectId">subjectId</code></td>
<td><p>[required] The unique identifier of the subject.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      subject = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        credentials = list(
          list(
            enabled = TRUE|FALSE,
            failed = TRUE|FALSE,
            issuer = "string",
            seenAt = as.POSIXct(
              "2015-01-01"
            ),
            serialNumber = "string",
            x509CertificateData = "string"
          )
        ),
        enabled = TRUE|FALSE,
        instanceProperties = list(
          list(
            failed = TRUE|FALSE,
            properties = list(
              "string"
            ),
            seenAt = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        lastSeenAt = as.POSIXct(
          "2015-01-01"
        ),
        subjectArn = "string",
        subjectId = "string",
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        x509Subject = "string"
      )
    )

### Request syntax

    svc$get_subject(
      subjectId = "string"
    )
