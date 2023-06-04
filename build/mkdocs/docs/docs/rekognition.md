<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Rekognition

### Description

This is the API Reference for [Amazon Rekognition
Image](https://docs.aws.amazon.com/rekognition/latest/dg/images.html),
[Amazon Rekognition Custom
Labels](https://docs.aws.amazon.com/rekognition/latest/customlabels-dg/what-is.html),
[Amazon Rekognition Stored
Video](https://docs.aws.amazon.com/rekognition/latest/dg/video.html),
[Amazon Rekognition Streaming
Video](https://docs.aws.amazon.com/rekognition/latest/dg/streaming-video.html).
It provides descriptions of actions, data types, common parameters, and
common errors.

**Amazon Rekognition Image**

-   `compare_faces`

-   `create_collection`

-   `delete_collection`

-   `delete_faces`

-   `describe_collection`

-   `detect_faces`

-   `detect_labels`

-   `detect_moderation_labels`

-   `detect_protective_equipment`

-   `detect_text`

-   `get_celebrity_info`

-   `index_faces`

-   `list_collections`

-   `list_faces`

-   `recognize_celebrities`

-   `search_faces`

-   `search_faces_by_image`

**Amazon Rekognition Custom Labels**

-   `copy_project_version`

-   `create_dataset`

-   `create_project`

-   `create_project_version`

-   `delete_dataset`

-   `delete_project`

-   `delete_project_policy`

-   `delete_project_version`

-   `describe_dataset`

-   `describe_projects`

-   `describe_project_versions`

-   `detect_custom_labels`

-   `distribute_dataset_entries`

-   `list_dataset_entries`

-   `list_dataset_labels`

-   `list_project_policies`

-   `put_project_policy`

-   `start_project_version`

-   `stop_project_version`

-   `update_dataset_entries`

**Amazon Rekognition Video Stored Video**

-   `get_celebrity_recognition`

-   `get_content_moderation`

-   `get_face_detection`

-   `get_face_search`

-   `get_label_detection`

-   `get_person_tracking`

-   `get_segment_detection`

-   `get_text_detection`

-   `start_celebrity_recognition`

-   `start_content_moderation`

-   `start_face_detection`

-   `start_face_search`

-   `start_label_detection`

-   `start_person_tracking`

-   `start_segment_detection`

-   `start_text_detection`

**Amazon Rekognition Video Streaming Video**

-   `create_stream_processor`

-   `delete_stream_processor`

-   `describe_stream_processor`

-   `list_stream_processors`

-   `start_stream_processor`

-   `stop_stream_processor`

-   `update_stream_processor`

### Usage

    rekognition(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- rekognition(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_compare_faces/"> compare_faces </a></td>
<td style="text-align: left;">Compares a face in the source input image
with each of the 100 largest faces detected in the target input
image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_copy_project_version/"> copy_project_version </a></td>
<td style="text-align: left;">Copies a version of an Amazon Rekognition
Custom Labels model from a source project to a destination project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_create_collection/"> create_collection </a></td>
<td style="text-align: left;">Creates a collection in an AWS Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates a new Amazon Rekognition Custom
Labels dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_create_face_liveness_session/"> create_face_liveness_session </a></td>
<td style="text-align: left;">This API operation initiates a Face
Liveness session</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_create_project/"> create_project </a></td>
<td style="text-align: left;">Creates a new Amazon Rekognition Custom
Labels project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_create_project_version/"> create_project_version </a></td>
<td style="text-align: left;">Creates a new version of a model and
begins training</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_create_stream_processor/"> create_stream_processor </a></td>
<td style="text-align: left;">Creates an Amazon Rekognition stream
processor that you can use to detect and recognize faces or to detect
labels in a streaming video</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_delete_collection/"> delete_collection </a></td>
<td style="text-align: left;">Deletes the specified collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes an existing Amazon Rekognition
Custom Labels dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_delete_faces/"> delete_faces </a></td>
<td style="text-align: left;">Deletes faces from a collection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_delete_project/"> delete_project </a></td>
<td style="text-align: left;">Deletes an Amazon Rekognition Custom
Labels project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_delete_project_policy/"> delete_project_policy </a></td>
<td style="text-align: left;">Deletes an existing project policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_delete_project_version/"> delete_project_version </a></td>
<td style="text-align: left;">Deletes an Amazon Rekognition Custom
Labels model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_delete_stream_processor/"> delete_stream_processor </a></td>
<td style="text-align: left;">Deletes the stream processor identified by
Name</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_describe_collection/"> describe_collection </a></td>
<td style="text-align: left;">Describes the specified collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_describe_dataset/"> describe_dataset </a></td>
<td style="text-align: left;">Describes an Amazon Rekognition Custom
Labels dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_describe_projects/"> describe_projects </a></td>
<td style="text-align: left;">Gets information about your Amazon
Rekognition Custom Labels projects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_describe_project_versions/"> describe_project_versions </a></td>
<td style="text-align: left;">Lists and describes the versions of a
model in an Amazon Rekognition Custom Labels project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_describe_stream_processor/"> describe_stream_processor </a></td>
<td style="text-align: left;">Provides information about a stream
processor created by CreateStreamProcessor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_detect_custom_labels/"> detect_custom_labels </a></td>
<td style="text-align: left;">Detects custom labels in a supplied image
by using an Amazon Rekognition Custom Labels model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_detect_faces/"> detect_faces </a></td>
<td style="text-align: left;">Detects faces within an image that is
provided as input</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_detect_labels/"> detect_labels </a></td>
<td style="text-align: left;">Detects instances of real-world entities
within an image (JPEG or PNG) provided as input</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_detect_moderation_labels/"> detect_moderation_labels </a></td>
<td style="text-align: left;">Detects unsafe content in a specified JPEG
or PNG format image</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_detect_protective_equipment/"> detect_protective_equipment </a></td>
<td style="text-align: left;">Detects Personal Protective Equipment
(PPE) worn by people detected in an image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_detect_text/"> detect_text </a></td>
<td style="text-align: left;">Detects text in the input image and
converts it into machine-readable text</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_distribute_dataset_entries/"> distribute_dataset_entries </a></td>
<td style="text-align: left;">Distributes the entries (images) in a
training dataset across the training dataset and the test dataset for a
project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_get_celebrity_info/"> get_celebrity_info </a></td>
<td style="text-align: left;">Gets the name and additional information
about a celebrity based on their Amazon Rekognition ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_get_celebrity_recognition/"> get_celebrity_recognition </a></td>
<td style="text-align: left;">Gets the celebrity recognition results for
a Amazon Rekognition Video analysis started by
StartCelebrityRecognition</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_get_content_moderation/"> get_content_moderation </a></td>
<td style="text-align: left;">Gets the inappropriate, unwanted, or
offensive content analysis results for a Amazon Rekognition Video
analysis started by StartContentModeration</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_get_face_detection/"> get_face_detection </a></td>
<td style="text-align: left;">Gets face detection results for a Amazon
Rekognition Video analysis started by StartFaceDetection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_get_face_liveness_session_results/"> get_face_liveness_session_results </a></td>
<td style="text-align: left;">Retrieves the results of a specific Face
Liveness session</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_get_face_search/"> get_face_search </a></td>
<td style="text-align: left;">Gets the face search results for Amazon
Rekognition Video face search started by StartFaceSearch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_get_label_detection/"> get_label_detection </a></td>
<td style="text-align: left;">Gets the label detection results of a
Amazon Rekognition Video analysis started by StartLabelDetection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_get_person_tracking/"> get_person_tracking </a></td>
<td style="text-align: left;">Gets the path tracking results of a Amazon
Rekognition Video analysis started by StartPersonTracking</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_get_segment_detection/"> get_segment_detection </a></td>
<td style="text-align: left;">Gets the segment detection results of a
Amazon Rekognition Video analysis started by StartSegmentDetection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_get_text_detection/"> get_text_detection </a></td>
<td style="text-align: left;">Gets the text detection results of a
Amazon Rekognition Video analysis started by StartTextDetection</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_index_faces/"> index_faces </a></td>
<td style="text-align: left;">Detects faces in the input image and adds
them to the specified collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_list_collections/"> list_collections </a></td>
<td style="text-align: left;">Returns list of collection IDs in your
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_list_dataset_entries/"> list_dataset_entries </a></td>
<td style="text-align: left;">Lists the entries (images) within a
dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_list_dataset_labels/"> list_dataset_labels </a></td>
<td style="text-align: left;">Lists the labels in a dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_list_faces/"> list_faces </a></td>
<td style="text-align: left;">Returns metadata for faces in the
specified collection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_list_project_policies/"> list_project_policies </a></td>
<td style="text-align: left;">Gets a list of the project policies
attached to a project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_list_stream_processors/"> list_stream_processors </a></td>
<td style="text-align: left;">Gets a list of stream processors that you
have created with CreateStreamProcessor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags in an Amazon
Rekognition collection, stream processor, or Custom Labels model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_put_project_policy/"> put_project_policy </a></td>
<td style="text-align: left;">Attaches a project policy to a Amazon
Rekognition Custom Labels project in a trusting AWS account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_recognize_celebrities/"> recognize_celebrities </a></td>
<td style="text-align: left;">Returns an array of celebrities recognized
in the input image</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_search_faces/"> search_faces </a></td>
<td style="text-align: left;">For a given input face ID, searches for
matching faces in the collection the face belongs to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_search_faces_by_image/"> search_faces_by_image </a></td>
<td style="text-align: left;">For a given input image, first detects the
largest face in the image, and then searches the specified collection
for matching faces</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_start_celebrity_recognition/"> start_celebrity_recognition </a></td>
<td style="text-align: left;">Starts asynchronous recognition of
celebrities in a stored video</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_start_content_moderation/"> start_content_moderation </a></td>
<td style="text-align: left;">Starts asynchronous detection of
inappropriate, unwanted, or offensive content in a stored video</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_start_face_detection/"> start_face_detection </a></td>
<td style="text-align: left;">Starts asynchronous detection of faces in
a stored video</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_start_face_search/"> start_face_search </a></td>
<td style="text-align: left;">Starts the asynchronous search for faces
in a collection that match the faces of persons detected in a stored
video</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_start_label_detection/"> start_label_detection </a></td>
<td style="text-align: left;">Starts asynchronous detection of labels in
a stored video</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_start_person_tracking/"> start_person_tracking </a></td>
<td style="text-align: left;">Starts the asynchronous tracking of a
person's path in a stored video</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_start_project_version/"> start_project_version </a></td>
<td style="text-align: left;">Starts the running of the version of a
model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_start_segment_detection/"> start_segment_detection </a></td>
<td style="text-align: left;">Starts asynchronous detection of segment
detection in a stored video</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_start_stream_processor/"> start_stream_processor </a></td>
<td style="text-align: left;">Starts processing a stream processor</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_start_text_detection/"> start_text_detection </a></td>
<td style="text-align: left;">Starts asynchronous detection of text in a
stored video</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_stop_project_version/"> stop_project_version </a></td>
<td style="text-align: left;">Stops a running model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_stop_stream_processor/"> stop_stream_processor </a></td>
<td style="text-align: left;">Stops a running stream processor that was
created by CreateStreamProcessor</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more key-value tags to an
Amazon Rekognition collection, stream processor, or Custom Labels
model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from an Amazon
Rekognition collection, stream processor, or Custom Labels model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../rekognition_update_dataset_entries/"> update_dataset_entries </a></td>
<td style="text-align: left;">Adds or updates one or more entries
(images) in a dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../rekognition_update_stream_processor/"> update_stream_processor </a></td>
<td style="text-align: left;">Allows you to update a stream
processor</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- rekognition()
    # This operation compares the largest face detected in the source image
    # with each face detected in the target image.
    svc$compare_faces(
      SimilarityThreshold = 90L,
      SourceImage = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "mysourceimage"
        )
      ),
      TargetImage = list(
        S3Object = list(
          Bucket = "mybucket",
          Name = "mytargetimage"
        )
      )
    )

    ## End(Not run)
