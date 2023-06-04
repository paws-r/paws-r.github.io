<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Comprehend Medical

### Description

Comprehend Medical; extracts structured information from unstructured
clinical text. Use these actions to gain insight in your documents.

### Usage

    comprehendmedical(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehendmedical_:_config">config</code></td>
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

    svc <- comprehendmedical(
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
<td style="text-align: left;"><a href="../comprehendmedical_describe_entities_detection_v2_job/"> describe_entities_detection_v2_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
medical entities detection job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_describe_icd10cm_inference_job/"> describe_icd10cm_inference_job </a></td>
<td style="text-align: left;">Gets the properties associated with an
InferICD10CM job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_describe_phi_detection_job/"> describe_phi_detection_job </a></td>
<td style="text-align: left;">Gets the properties associated with a
protected health information (PHI) detection job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_describe_rx_norm_inference_job/"> describe_rx_norm_inference_job </a></td>
<td style="text-align: left;">Gets the properties associated with an
InferRxNorm job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_describe_snomedct_inference_job/"> describe_snomedct_inference_job </a></td>
<td style="text-align: left;">Gets the properties associated with an
InferSNOMEDCT job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_detect_entities/"> detect_entities </a></td>
<td style="text-align: left;">The DetectEntities operation is
deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_detect_entities_v2/"> detect_entities_v2 </a></td>
<td style="text-align: left;">Inspects the clinical text for a variety
of medical entities and returns specific information about them such as
entity category, location, and confidence score on that information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_detect_phi/"> detect_phi </a></td>
<td style="text-align: left;">Inspects the clinical text for protected
health information (PHI) entities and returns the entity category,
location, and confidence score for each entity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_infer_icd10cm/"> infer_icd10cm </a></td>
<td style="text-align: left;">InferICD10CM detects medical conditions as
entities listed in a patient record and links those entities to
normalized concept identifiers in the ICD-10-CM knowledge base from the
Centers for Disease Control</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_infer_rx_norm/"> infer_rx_norm </a></td>
<td style="text-align: left;">InferRxNorm detects medications as
entities listed in a patient record and links to the normalized concept
identifiers in the RxNorm database from the National Library of
Medicine</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_infer_snomedct/"> infer_snomedct </a></td>
<td style="text-align: left;">InferSNOMEDCT detects possible medical
concepts as entities and links them to codes from the Systematized
Nomenclature of Medicine, Clinical Terms (SNOMED-CT) ontology</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_list_entities_detection_v2_jobs/"> list_entities_detection_v2_jobs </a></td>
<td style="text-align: left;">Gets a list of medical entity detection
jobs that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_list_icd10cm_inference_jobs/"> list_icd10cm_inference_jobs </a></td>
<td style="text-align: left;">Gets a list of InferICD10CM jobs that you
have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_list_phi_detection_jobs/"> list_phi_detection_jobs </a></td>
<td style="text-align: left;">Gets a list of protected health
information (PHI) detection jobs that you have submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_list_rx_norm_inference_jobs/"> list_rx_norm_inference_jobs </a></td>
<td style="text-align: left;">Gets a list of InferRxNorm jobs that you
have submitted</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_list_snomedct_inference_jobs/"> list_snomedct_inference_jobs </a></td>
<td style="text-align: left;">Gets a list of InferSNOMEDCT jobs a user
has submitted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_start_entities_detection_v2_job/"> start_entities_detection_v2_job </a></td>
<td style="text-align: left;">Starts an asynchronous medical entity
detection job for a collection of documents</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_start_icd10cm_inference_job/"> start_icd10cm_inference_job </a></td>
<td style="text-align: left;">Starts an asynchronous job to detect
medical conditions and link them to the ICD-10-CM ontology</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_start_phi_detection_job/"> start_phi_detection_job </a></td>
<td style="text-align: left;">Starts an asynchronous job to detect
protected health information (PHI)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_start_rx_norm_inference_job/"> start_rx_norm_inference_job </a></td>
<td style="text-align: left;">Starts an asynchronous job to detect
medication entities and link them to the RxNorm ontology</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_start_snomedct_inference_job/"> start_snomedct_inference_job </a></td>
<td style="text-align: left;">Starts an asynchronous job to detect
medical concepts and link them to the SNOMED-CT ontology</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_stop_entities_detection_v2_job/"> stop_entities_detection_v2_job </a></td>
<td style="text-align: left;">Stops a medical entities detection job in
progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_stop_icd10cm_inference_job/"> stop_icd10cm_inference_job </a></td>
<td style="text-align: left;">Stops an InferICD10CM inference job in
progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_stop_phi_detection_job/"> stop_phi_detection_job </a></td>
<td style="text-align: left;">Stops a protected health information (PHI)
detection job in progress</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../comprehendmedical_stop_rx_norm_inference_job/"> stop_rx_norm_inference_job </a></td>
<td style="text-align: left;">Stops an InferRxNorm inference job in
progress</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../comprehendmedical_stop_snomedct_inference_job/"> stop_snomedct_inference_job </a></td>
<td style="text-align: left;">Stops an InferSNOMEDCT inference job in
progress</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- comprehendmedical()
    svc$describe_entities_detection_v2_job(
      Foo = 123
    )

    ## End(Not run)
