<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_create_face_liveness_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API operation initiates a Face Liveness session

### Description

This API operation initiates a Face Liveness session. It returns a
`SessionId`, which you can use to start streaming Face Liveness video
and get the results for a Face Liveness session. You can use the
`OutputConfig` option in the Settings parameter to provide an Amazon S3
bucket location. The Amazon S3 bucket stores reference images and audit
images. You can use `AuditImagesLimit` to limit the number of audit
images returned. This number is between 0 and 4. By default, it is set
to 0. The limit is best effort and based on the duration of the
selfie-video.

### Usage

    rekognition_create_face_liveness_session(KmsKeyId, Settings,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_create_face_liveness_session_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The identifier for your AWS Key Management Service key (AWS KMS
key). Used to encrypt audit images and reference images.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_create_face_liveness_session_:_Settings">Settings</code></td>
<td><p>A session settings object. It contains settings for the operation
to be performed. For Face Liveness, it accepts <code>OutputConfig</code>
and <code>AuditImagesLimit</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_create_face_liveness_session_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>Idempotent token is used to recognize the Face Liveness request.
If the same token is used with multiple
<code>create_face_liveness_session</code> requests, the same session is
returned. This token is employed to avoid unintentionally creating the
same session multiple times.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string"
    )

### Request syntax

    svc$create_face_liveness_session(
      KmsKeyId = "string",
      Settings = list(
        OutputConfig = list(
          S3Bucket = "string",
          S3KeyPrefix = "string"
        ),
        AuditImagesLimit = 123
      ),
      ClientRequestToken = "string"
    )
