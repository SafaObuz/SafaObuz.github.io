<h1
id="arkitscenes-a-diverse-real-world-dataset-for-3d-indoor-scene-understanding-using-mobile-rgb-d-data">ARKitScenes:
A Diverse Real-World Dataset For 3D Indoor Scene Understanding Using
Mobile RGB-D Data</h1>
<p>Gilad Baruch, Zhuoyuan Chen, Afshin Dehghan, Tal Dimry, Yuri Feigin,
Peter Fu, Thomas Gebauer, Brandon Joffe, Daniel Kurz, Arik Schwartz,
Elad Shulman (2022) <a
href="https://doi.org/10.48550/arXiv.2111.08897">View Paper</a></p>
<p>Right now, my notes still have this callout-note thing. In theory,
though, I take these important passages, summarize and synthesize its
content into my own words.</p>
<p>Testing writing here.</p>
<p><span
class="math display"><em>f</em>(<em>x</em>) = ∫<sub>0</sub><sup>1</sup><em>e</em><sup>−<em>x</em><sup>2</sup></sup><em>d</em><em>x</em></span></p>
<p>This project is related to <a
href="avetisyanScan2CADLearningCAD2018.html">Scan2CAD: Learning CAD
Model Alignment in RGB-D Scans</a>. Let’s see if this is still an ugly
link on the page.</p>
<div class="callout-note">
<p> This is a note callout</p>
</div>
<div class="callout-warning">
<p> This is a warning block, let’s see how Pandoc converts it</p>
</div>
<div class="column-margin">
<p> This becomes a side note in our workflow</p>
</div>
<p>In addition to the raw and processed data from the mobile device,
ARKitScenes includes high resolution depth maps captured using a
stationary laser scanner, as well as manually labeled 3D oriented
bounding boxes for a large taxonomy of furniture.</p>
<p><img
src="../attachments/Baruch-ARKitScenesDiverseRealWorld-2022/fig-Baruch-ARKitScenesDiverseRealWorld-2022-2-x94-y599.png" /></p>
<p>ARKitScenes, consist of 5,048 RGB-D sequences</p>
<p>These sequences include 1,661 unique scenes.</p>
<p><img
src="../attachments/Baruch-ARKitScenesDiverseRealWorld-2022/fig-Baruch-ARKitScenesDiverseRealWorld-2022-3-x102-y485.png" /></p>
<p><img
src="../attachments/Baruch-ARKitScenesDiverseRealWorld-2022/fig-Baruch-ARKitScenesDiverseRealWorld-2022-4-x104-y599.png" /></p>
<p>We used two main devices for data collection: The 2020 iPad Pro and
Faro Focus S70. The 2020 iPad Pro is used to collect various sensor
outputs such as IMU, RGB (for both Wide and Ultra Wide cameras) as well
as the dense depth map from the LiDAR scanner via ARKit. We use the
official ARKit SDK3 to collect such information.</p>
<p>Our data collection app runs ARKit world tracking and scene
reconstruction during the capture. This is to provide live feedback to
the operators, who are not computer vision experts, on tracking
robustness and reconstruction quality. In addition to the handheld iPad
Pro we utilized a Faro Focus S70 stationary laser scanner on a tripod to
collect high-resolution XYZRGB point clouds of the environment.</p>
<p>Data is collected in three major cities in Europe, London, Newcastle,
and Warsaw.</p>
<p>the socioeconomic status (SES) of the household as well as the
location of the house in the city.</p>
<p>rural, suburban, and urban location</p>
<p>irst, we use a Faro Focus S70 stationary laser scanner on a tripod to
collect highly accurate XYZRGB point clouds of the environment. Tripod
locations are chosen to maximize surface coverage, and on average we
collected four laser scans per room to ensure good coverage. Second, we
record up to three video sequences attempting to capture all surfaces in
each room using the iPad Pro.</p>
<p>environment completely static</p>
<p>inconsistent illumination between the different sequences and
scans.</p>
<p>3D object bounding boxes. We use a custom tool to manually annotate
3D oriented bounding boxes for 17 categories of room-defining
furniture.</p>
