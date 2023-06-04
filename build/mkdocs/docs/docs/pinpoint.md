<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Pinpoint

### Description

Doc Engage API - Amazon Pinpoint API

### Usage

    pinpoint(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pinpoint_:_config">config</code></td>
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

    svc <- pinpoint(
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
<td style="text-align: left;"><a href="../pinpoint_create_app/"> create_app </a></td>
<td style="text-align: left;">Creates an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_create_campaign/"> create_campaign </a></td>
<td style="text-align: left;">Creates a new campaign for an application
or updates the settings of an existing campaign for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_create_email_template/"> create_email_template </a></td>
<td style="text-align: left;">Creates a message template for messages
that are sent through the email channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_create_export_job/"> create_export_job </a></td>
<td style="text-align: left;">Creates an export job for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_create_import_job/"> create_import_job </a></td>
<td style="text-align: left;">Creates an import job for an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_create_in_app_template/"> create_in_app_template </a></td>
<td style="text-align: left;">Creates a new message template for
messages using the in-app message channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_create_journey/"> create_journey </a></td>
<td style="text-align: left;">Creates a journey for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_create_push_template/"> create_push_template </a></td>
<td style="text-align: left;">Creates a message template for messages
that are sent through a push notification channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_create_recommender_configuration/"> create_recommender_configuration </a></td>
<td style="text-align: left;">Creates an Amazon Pinpoint configuration
for a recommender model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_create_segment/"> create_segment </a></td>
<td style="text-align: left;">Creates a new segment for an application
or updates the configuration, dimension, and other settings for an
existing segment that's associated with an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_create_sms_template/"> create_sms_template </a></td>
<td style="text-align: left;">Creates a message template for messages
that are sent through the SMS channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_create_voice_template/"> create_voice_template </a></td>
<td style="text-align: left;">Creates a message template for messages
that are sent through the voice channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_adm_channel/"> delete_adm_channel </a></td>
<td style="text-align: left;">Disables the ADM channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_apns_channel/"> delete_apns_channel </a></td>
<td style="text-align: left;">Disables the APNs channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_apns_sandbox_channel/"> delete_apns_sandbox_channel </a></td>
<td style="text-align: left;">Disables the APNs sandbox channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_apns_voip_channel/"> delete_apns_voip_channel </a></td>
<td style="text-align: left;">Disables the APNs VoIP channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_apns_voip_sandbox_channel/"> delete_apns_voip_sandbox_channel </a></td>
<td style="text-align: left;">Disables the APNs VoIP sandbox channel for
an application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_app/"> delete_app </a></td>
<td style="text-align: left;">Deletes an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_baidu_channel/"> delete_baidu_channel </a></td>
<td style="text-align: left;">Disables the Baidu channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_campaign/"> delete_campaign </a></td>
<td style="text-align: left;">Deletes a campaign from an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_email_channel/"> delete_email_channel </a></td>
<td style="text-align: left;">Disables the email channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_email_template/"> delete_email_template </a></td>
<td style="text-align: left;">Deletes a message template for messages
that were sent through the email channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_endpoint/"> delete_endpoint </a></td>
<td style="text-align: left;">Deletes an endpoint from an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_event_stream/"> delete_event_stream </a></td>
<td style="text-align: left;">Deletes the event stream for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_gcm_channel/"> delete_gcm_channel </a></td>
<td style="text-align: left;">Disables the GCM channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_in_app_template/"> delete_in_app_template </a></td>
<td style="text-align: left;">Deletes a message template for messages
sent using the in-app message channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_journey/"> delete_journey </a></td>
<td style="text-align: left;">Deletes a journey from an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_push_template/"> delete_push_template </a></td>
<td style="text-align: left;">Deletes a message template for messages
that were sent through a push notification channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_recommender_configuration/"> delete_recommender_configuration </a></td>
<td style="text-align: left;">Deletes an Amazon Pinpoint configuration
for a recommender model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_segment/"> delete_segment </a></td>
<td style="text-align: left;">Deletes a segment from an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_sms_channel/"> delete_sms_channel </a></td>
<td style="text-align: left;">Disables the SMS channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_sms_template/"> delete_sms_template </a></td>
<td style="text-align: left;">Deletes a message template for messages
that were sent through the SMS channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_user_endpoints/"> delete_user_endpoints </a></td>
<td style="text-align: left;">Deletes all the endpoints that are
associated with a specific user ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_delete_voice_channel/"> delete_voice_channel </a></td>
<td style="text-align: left;">Disables the voice channel for an
application and deletes any existing settings for the channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_delete_voice_template/"> delete_voice_template </a></td>
<td style="text-align: left;">Deletes a message template for messages
that were sent through the voice channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_adm_channel/"> get_adm_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the ADM channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_apns_channel/"> get_apns_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the APNs channel for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_apns_sandbox_channel/"> get_apns_sandbox_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the APNs sandbox channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_apns_voip_channel/"> get_apns_voip_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the APNs VoIP channel for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_apns_voip_sandbox_channel/"> get_apns_voip_sandbox_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the APNs VoIP sandbox channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_app/"> get_app </a></td>
<td style="text-align: left;">Retrieves information about an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_application_date_range_kpi/"> get_application_date_range_kpi </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard metric that applies to an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_application_settings/"> get_application_settings </a></td>
<td style="text-align: left;">Retrieves information about the settings
for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_apps/"> get_apps </a></td>
<td style="text-align: left;">Retrieves information about all the
applications that are associated with your Amazon Pinpoint account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_baidu_channel/"> get_baidu_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the Baidu channel for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_campaign/"> get_campaign </a></td>
<td style="text-align: left;">Retrieves information about the status,
configuration, and other settings for a campaign</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_campaign_activities/"> get_campaign_activities </a></td>
<td style="text-align: left;">Retrieves information about all the
activities for a campaign</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_campaign_date_range_kpi/"> get_campaign_date_range_kpi </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard metric that applies to a campaign</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_campaigns/"> get_campaigns </a></td>
<td style="text-align: left;">Retrieves information about the status,
configuration, and other settings for all the campaigns that are
associated with an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_campaign_version/"> get_campaign_version </a></td>
<td style="text-align: left;">Retrieves information about the status,
configuration, and other settings for a specific version of a
campaign</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_campaign_versions/"> get_campaign_versions </a></td>
<td style="text-align: left;">Retrieves information about the status,
configuration, and other settings for all versions of a campaign</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_channels/"> get_channels </a></td>
<td style="text-align: left;">Retrieves information about the history
and status of each channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_email_channel/"> get_email_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the email channel for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_email_template/"> get_email_template </a></td>
<td style="text-align: left;">Retrieves the content and settings of a
message template for messages that are sent through the email
channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_endpoint/"> get_endpoint </a></td>
<td style="text-align: left;">Retrieves information about the settings
and attributes of a specific endpoint for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_event_stream/"> get_event_stream </a></td>
<td style="text-align: left;">Retrieves information about the event
stream settings for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_export_job/"> get_export_job </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of a specific export job for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_export_jobs/"> get_export_jobs </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of all the export jobs for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_gcm_channel/"> get_gcm_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the GCM channel for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_import_job/"> get_import_job </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of a specific import job for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_import_jobs/"> get_import_jobs </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of all the import jobs for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_in_app_messages/"> get_in_app_messages </a></td>
<td style="text-align: left;">Retrieves the in-app messages targeted for
the provided endpoint ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_in_app_template/"> get_in_app_template </a></td>
<td style="text-align: left;">Retrieves the content and settings of a
message template for messages sent through the in-app channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_journey/"> get_journey </a></td>
<td style="text-align: left;">Retrieves information about the status,
configuration, and other settings for a journey</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_journey_date_range_kpi/"> get_journey_date_range_kpi </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard engagement metric that applies to a journey</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpoint_get_journey_execution_activity_metrics/"> get_journey_execution_activity_metrics </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard execution metric that applies to a journey activity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_journey_execution_metrics/"> get_journey_execution_metrics </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard execution metric that applies to a journey</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpoint_get_journey_run_execution_activity_metrics/"> get_journey_run_execution_activity_metrics </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard run execution metric that applies to a journey
activity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_journey_run_execution_metrics/"> get_journey_run_execution_metrics </a></td>
<td style="text-align: left;">Retrieves (queries) pre-aggregated data
for a standard run execution metric that applies to a journey</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_journey_runs/"> get_journey_runs </a></td>
<td style="text-align: left;">Provides information about the runs of a
journey</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_push_template/"> get_push_template </a></td>
<td style="text-align: left;">Retrieves the content and settings of a
message template for messages that are sent through a push notification
channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_recommender_configuration/"> get_recommender_configuration </a></td>
<td style="text-align: left;">Retrieves information about an Amazon
Pinpoint configuration for a recommender model</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_recommender_configurations/"> get_recommender_configurations </a></td>
<td style="text-align: left;">Retrieves information about all the
recommender model configurations that are associated with your Amazon
Pinpoint account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_segment/"> get_segment </a></td>
<td style="text-align: left;">Retrieves information about the
configuration, dimension, and other settings for a specific segment
that's associated with an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_segment_export_jobs/"> get_segment_export_jobs </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the export jobs for a segment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_segment_import_jobs/"> get_segment_import_jobs </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the import jobs for a segment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_segments/"> get_segments </a></td>
<td style="text-align: left;">Retrieves information about the
configuration, dimension, and other settings for all the segments that
are associated with an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_segment_version/"> get_segment_version </a></td>
<td style="text-align: left;">Retrieves information about the
configuration, dimension, and other settings for a specific version of a
segment that's associated with an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_segment_versions/"> get_segment_versions </a></td>
<td style="text-align: left;">Retrieves information about the
configuration, dimension, and other settings for all the versions of a
specific segment that's associated with an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_sms_channel/"> get_sms_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the SMS channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_sms_template/"> get_sms_template </a></td>
<td style="text-align: left;">Retrieves the content and settings of a
message template for messages that are sent through the SMS channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_user_endpoints/"> get_user_endpoints </a></td>
<td style="text-align: left;">Retrieves information about all the
endpoints that are associated with a specific user ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_get_voice_channel/"> get_voice_channel </a></td>
<td style="text-align: left;">Retrieves information about the status and
settings of the voice channel for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_get_voice_template/"> get_voice_template </a></td>
<td style="text-align: left;">Retrieves the content and settings of a
message template for messages that are sent through the voice
channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_list_journeys/"> list_journeys </a></td>
<td style="text-align: left;">Retrieves information about the status,
configuration, and other settings for all the journeys that are
associated with an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves all the tags (keys and values)
that are associated with an application, campaign, message template, or
segment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_list_templates/"> list_templates </a></td>
<td style="text-align: left;">Retrieves information about all the
message templates that are associated with your Amazon Pinpoint
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_list_template_versions/"> list_template_versions </a></td>
<td style="text-align: left;">Retrieves information about all the
versions of a specific message template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_phone_number_validate/"> phone_number_validate </a></td>
<td style="text-align: left;">Retrieves information about a phone
number</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_put_events/"> put_events </a></td>
<td style="text-align: left;">Creates a new event to record for
endpoints, or creates or updates endpoint data that existing events are
associated with</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_put_event_stream/"> put_event_stream </a></td>
<td style="text-align: left;">Creates a new event stream for an
application or updates the settings of an existing event stream for an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_remove_attributes/"> remove_attributes </a></td>
<td style="text-align: left;">Removes one or more attributes, of the
same attribute type, from all the endpoints that are associated with an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_send_messages/"> send_messages </a></td>
<td style="text-align: left;">Creates and sends a direct message</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_send_otp_message/"> send_otp_message </a></td>
<td style="text-align: left;">Send an OTP message</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_send_users_messages/"> send_users_messages </a></td>
<td style="text-align: left;">Creates and sends a message to a list of
users</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags (keys and values) to
an application, campaign, message template, or segment</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags (keys and values)
from an application, campaign, message template, or segment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_adm_channel/"> update_adm_channel </a></td>
<td style="text-align: left;">Enables the ADM channel for an application
or updates the status and settings of the ADM channel for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_apns_channel/"> update_apns_channel </a></td>
<td style="text-align: left;">Enables the APNs channel for an
application or updates the status and settings of the APNs channel for
an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_apns_sandbox_channel/"> update_apns_sandbox_channel </a></td>
<td style="text-align: left;">Enables the APNs sandbox channel for an
application or updates the status and settings of the APNs sandbox
channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_apns_voip_channel/"> update_apns_voip_channel </a></td>
<td style="text-align: left;">Enables the APNs VoIP channel for an
application or updates the status and settings of the APNs VoIP channel
for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_apns_voip_sandbox_channel/"> update_apns_voip_sandbox_channel </a></td>
<td style="text-align: left;">Enables the APNs VoIP sandbox channel for
an application or updates the status and settings of the APNs VoIP
sandbox channel for an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_application_settings/"> update_application_settings </a></td>
<td style="text-align: left;">Updates the settings for an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_baidu_channel/"> update_baidu_channel </a></td>
<td style="text-align: left;">Enables the Baidu channel for an
application or updates the status and settings of the Baidu channel for
an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_campaign/"> update_campaign </a></td>
<td style="text-align: left;">Updates the configuration and other
settings for a campaign</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_email_channel/"> update_email_channel </a></td>
<td style="text-align: left;">Enables the email channel for an
application or updates the status and settings of the email channel for
an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_email_template/"> update_email_template </a></td>
<td style="text-align: left;">Updates an existing message template for
messages that are sent through the email channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_endpoint/"> update_endpoint </a></td>
<td style="text-align: left;">Creates a new endpoint for an application
or updates the settings and attributes of an existing endpoint for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_endpoints_batch/"> update_endpoints_batch </a></td>
<td style="text-align: left;">Creates a new batch of endpoints for an
application or updates the settings and attributes of a batch of
existing endpoints for an application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_gcm_channel/"> update_gcm_channel </a></td>
<td style="text-align: left;">Enables the GCM channel for an application
or updates the status and settings of the GCM channel for an
application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_in_app_template/"> update_in_app_template </a></td>
<td style="text-align: left;">Updates an existing message template for
messages sent through the in-app message channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_journey/"> update_journey </a></td>
<td style="text-align: left;">Updates the configuration and other
settings for a journey</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_journey_state/"> update_journey_state </a></td>
<td style="text-align: left;">Cancels (stops) an active journey</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_push_template/"> update_push_template </a></td>
<td style="text-align: left;">Updates an existing message template for
messages that are sent through a push notification channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_recommender_configuration/"> update_recommender_configuration </a></td>
<td style="text-align: left;">Updates an Amazon Pinpoint configuration
for a recommender model</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_segment/"> update_segment </a></td>
<td style="text-align: left;">Creates a new segment for an application
or updates the configuration, dimension, and other settings for an
existing segment that's associated with an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_sms_channel/"> update_sms_channel </a></td>
<td style="text-align: left;">Enables the SMS channel for an application
or updates the status and settings of the SMS channel for an
application</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_sms_template/"> update_sms_template </a></td>
<td style="text-align: left;">Updates an existing message template for
messages that are sent through the SMS channel</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_template_active_version/"> update_template_active_version </a></td>
<td style="text-align: left;">Changes the status of a specific version
of a message template to active</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_update_voice_channel/"> update_voice_channel </a></td>
<td style="text-align: left;">Enables the voice channel for an
application or updates the status and settings of the voice channel for
an application</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpoint_update_voice_template/"> update_voice_template </a></td>
<td style="text-align: left;">Updates an existing message template for
messages that are sent through the voice channel</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpoint_verify_otp_message/"> verify_otp_message </a></td>
<td style="text-align: left;">Verify an OTP</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- pinpoint()
    # The following example gets activity execution metrics for a single run
    # of a journey.
    svc$get_journey_run_execution_activity_metrics(
      ApplicationId = "11111111112222222222333333333344",
      JourneyId = "aaaaaaaaaabbbbbbbbbbccccccccccdd",
      RunId = "99999999998888888888777777777766",
      JourneyActivityId = "AAAAAAAAAA"
    )

    ## End(Not run)
