// pageextension 50151 "EXT Del Events Role Center" extends "Del Events Role Center"
// {
//     layout
//     {
//         addafter("Del Location")
//         {

//             part("DEL Generic Needs"; "DEL Generic Needs Page")
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//         }
//     }
//     actions
//     {
//         addafter(SetUp)
//         {
//             action("SetNeeds")
//             {
//                 ApplicationArea = all;
//                 Caption = 'Necesidades Genéricas';
//                 RunObject = page "DEL Generic Needs Page";
//             }
//         }
//     }
// }