<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Multimedia.aspx.cs" Inherits="Multimedia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
         <b>Media about us</b>
         <article>
             <video controls="controls" style="width: 480px; height: 243px">
                <source src="multimedia/video.MP4" type="video/mp4" />
             </video>
         </article><br />
         <article>
             <audio controls="controls" style="width: 325px; margin-top: 25px">
                 <source src="multimedia/song.mp3" type="audio/mp3" />
             </audio>
         </article>
         <article>            
             <embed height="225" width="425" src="https://www.youtube.com/watch?v=NLsFqThsKzs" />                         
         </article>
     </section>
</asp:Content>

