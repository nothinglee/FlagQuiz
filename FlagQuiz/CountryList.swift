//
//  File.swift
//  FlagQuiz
//
//  Created by 이수한 on 2018. 3. 18..
//  Copyright © 2018년 이수한. All rights reserved.
//

import Foundation

struct Quiz {
    var example: Array<Int>
    var correctAnswerIndex: Int
}

struct FlagInfo {
    var name: String
    var imageName: String
}

var flagInfo = [
    FlagInfo(name: "Afghanistan", imageName: "Afghanistan.png"),
    FlagInfo(name: "Albania", imageName: "Albania.png"),
    FlagInfo(name: "Algeria", imageName: "Algeria.png"),
    FlagInfo(name: "Andorra", imageName: "Andorra.png"),
    FlagInfo(name: "Angola", imageName: "Angola.png"),
    FlagInfo(name: "Antigua and Barbuda", imageName: "Antigua_and_Barbuda.png"),
    FlagInfo(name: "Argentina", imageName: "Argentina.png"),
    FlagInfo(name: "Armenia", imageName: "Armenia.png"),
    FlagInfo(name: "Australia", imageName: "Australia.png"),
    FlagInfo(name: "Austria", imageName: "Austria.png"),
    FlagInfo(name: "Azerbaijan", imageName: "Azerbaijan.png"),
    FlagInfo(name: "Bahrain", imageName: "Bahrain.png"),
    FlagInfo(name: "Bangladesh", imageName: "Bangladesh.png"),
    FlagInfo(name: "Barbados", imageName: "Barbados.png"),
    FlagInfo(name: "Belarus", imageName: "Belarus.png"),
    FlagInfo(name: "Belgium", imageName: "Belgium.png"),
    FlagInfo(name: "Belize", imageName: "Belize.png"),
    FlagInfo(name: "Benin", imageName: "Benin.png"),
    FlagInfo(name: "Bhutan", imageName: "Bhutan.png"),
    FlagInfo(name: "Bolivia", imageName: "Bolivia.png"),
    FlagInfo(name: "Bosnia and Herzegovina", imageName: "Bosnia_and_Herzegovina.png"),
    FlagInfo(name: "Botswana", imageName: "Botswana.png"),
    FlagInfo(name: "Brazil", imageName: "Brazil.png"),
    FlagInfo(name: "Brunei", imageName: "Brunei.png"),
    FlagInfo(name: "Bulgaria", imageName: "Bulgaria.png"),
    FlagInfo(name: "Burkina Faso", imageName: "Burkina_Faso.png"),
    FlagInfo(name: "Cambodia", imageName: "Cambodia.png"),
    FlagInfo(name: "Cameroon", imageName: "Cameroon.png"),
    FlagInfo(name: "Canada", imageName: "Canada.png"),
    FlagInfo(name: "Cape Verde", imageName: "Cape_Verde.png"),
    FlagInfo(name: "Chile", imageName: "Chile.png"),
    FlagInfo(name: "Colombia", imageName: "Colombia.png"),
    FlagInfo(name: "Costa Rica", imageName: "Costa_Rica.png"),
    FlagInfo(name: "Croatia", imageName: "Croatia.png"),
    FlagInfo(name: "Cuba", imageName: "Cuba.png"),
    FlagInfo(name: "Cyprus", imageName: "Cyprus.png"),
    FlagInfo(name: "Denmark", imageName: "Denmark.png"),
    FlagInfo(name: "Djibouti", imageName: "Djibouti.png"),
    FlagInfo(name: "Dominica", imageName: "Dominica.png"),
    FlagInfo(name: "East Timor", imageName: "East_Timor.png"),
    FlagInfo(name: "Ecuador", imageName: "Ecuador.png"),
    FlagInfo(name: "Egypt", imageName: "Egypt.png"),
    FlagInfo(name: "El Salvador", imageName: "El_Salvador.png"),
    FlagInfo(name: "Eritrea", imageName: "Eritrea.png"),
    FlagInfo(name: "Estonia", imageName: "Estonia.png"),
    FlagInfo(name: "Ethiopia", imageName: "Ethiopia.png"),
    FlagInfo(name: "Fiji", imageName: "Fiji.png"),
    FlagInfo(name: "Finland", imageName: "Finland.png"),
    FlagInfo(name: "Burundi", imageName: "Burundi.png"),
    FlagInfo(name: "Chad", imageName: "Chad.png"),
    FlagInfo(name: "Ivory Coast", imageName: "Ivory_Coast.png"),
    FlagInfo(name: "Equatorial Guinea", imageName: "Equatorial_Guinea.png"),
    FlagInfo(name: "Mauritius", imageName: "Mauritius.png"),
    FlagInfo(name: "Mozambique", imageName: "Mozambique.png"),
    FlagInfo(name: "South Sudan", imageName: "South_Sudan.png"),
    FlagInfo(name: "Sudan", imageName: "Sudan.png"),
    FlagInfo(name: "the United Arab Emirates", imageName: "the_United_Arab_Emirates.png"),
    FlagInfo(name: "France", imageName: "France.png"),
    FlagInfo(name: "Gabon", imageName: "Gabon.png"),
    FlagInfo(name: "Georgia", imageName: "Georgia.png"),
    FlagInfo(name: "Germany", imageName: "Germany.png"),
    FlagInfo(name: "Ghana", imageName: "Ghana.png"),
    FlagInfo(name: "Greece", imageName: "Greece.png"),
    FlagInfo(name: "Grenada", imageName: "Grenada.png"),
    FlagInfo(name: "Guatemala", imageName: "Guatemala.png"),
    FlagInfo(name: "Guinea-Bissau", imageName: "Guinea-Bissau.png"),
    FlagInfo(name: "Guinea", imageName: "Guinea.png"),
    FlagInfo(name: "Guyana", imageName: "Guyana.png"),
    FlagInfo(name: "Haiti", imageName: "Haiti.png"),
    FlagInfo(name: "Honduras", imageName: "Honduras.png"),
    FlagInfo(name: "Hungary", imageName: "Hungary.png"),
    FlagInfo(name: "Iceland", imageName: "Iceland.png"),
    FlagInfo(name: "India", imageName: "India.png"),
    FlagInfo(name: "Indonesia", imageName: "Indonesia.png"),
    FlagInfo(name: "Iran", imageName: "Iran.png"),
    FlagInfo(name: "Iraq", imageName: "Iraq.png"),
    FlagInfo(name: "Ireland", imageName: "Ireland.png"),
    FlagInfo(name: "Israel", imageName: "Israel.png"),
    FlagInfo(name: "Italy", imageName: "Italy.png"),
    FlagInfo(name: "Jamaica", imageName: "Jamaica.png"),
    FlagInfo(name: "Japan", imageName: "Japan.png"),
    FlagInfo(name: "Jordan", imageName: "Jordan.png"),
    FlagInfo(name: "Kazakhstan", imageName: "Kazakhstan.png"),
    FlagInfo(name: "Kenya", imageName: "Kenya.png"),
    FlagInfo(name: "Kiribati", imageName: "Kiribati.png"),
    FlagInfo(name: "Kosovo", imageName: "Kosovo.png"),
    FlagInfo(name: "Kuwait", imageName: "Kuwait.png"),
    FlagInfo(name: "Kyrgyzstan", imageName: "Kyrgyzstan.png"),
    FlagInfo(name: "Laos", imageName: "Laos.png"),
    FlagInfo(name: "Latvia", imageName: "Latvia.png"),
    FlagInfo(name: "Lebanon", imageName: "Lebanon.png"),
    FlagInfo(name: "Lesotho", imageName: "Lesotho.png"),
    FlagInfo(name: "Liberia", imageName: "Liberia.png"),
    FlagInfo(name: "Libya", imageName: "Libya.png"),
    FlagInfo(name: "Liechtenstein", imageName: "Liechtenstein.png"),
    FlagInfo(name: "Lithuania", imageName: "Lithuania.png"),
    FlagInfo(name: "Luxembourg", imageName: "Luxembourg.png"),
    FlagInfo(name: "Macedonia", imageName: "Macedonia.png"),
    FlagInfo(name: "Madagascar", imageName: "Madagascar.png"),
    FlagInfo(name: "Malawi", imageName: "Malawi.png"),
    FlagInfo(name: "Malaysia", imageName: "Malaysia.png"),
    FlagInfo(name: "Maldives", imageName: "Maldives.png"),
    FlagInfo(name: "Mali", imageName: "Mali.png"),
    FlagInfo(name: "Malta", imageName: "Malta.png"),
    FlagInfo(name: "Mauritania", imageName: "Mauritania.png"),
    FlagInfo(name: "Mexico", imageName: "Mexico.png"),
    FlagInfo(name: "Moldova", imageName: "Moldova.png"),
    FlagInfo(name: "Monaco", imageName: "Monaco.png"),
    FlagInfo(name: "Mongolia", imageName: "Mongolia.png"),
    FlagInfo(name: "Montenegro", imageName: "Montenegro.png"),
    FlagInfo(name: "Morocco", imageName: "Morocco.png"),
    FlagInfo(name: "Myanmar", imageName: "Myanmar.png"),
    FlagInfo(name: "Namibia", imageName: "Namibia.png"),
    FlagInfo(name: "Nauru", imageName: "Nauru.png"),
    FlagInfo(name: "New Zealand", imageName: "New_Zealand.png"),
    FlagInfo(name: "Nicaragua", imageName: "Nicaragua.png"),
    FlagInfo(name: "Niger", imageName: "Niger.png"),
    FlagInfo(name: "Nigeria", imageName: "Nigeria.png"),
    FlagInfo(name: "North Korea", imageName: "North_Korea.png"),
    FlagInfo(name: "Norway", imageName: "Norway.png"),
    FlagInfo(name: "Oman", imageName: "Oman.png"),
    FlagInfo(name: "Pakistan", imageName: "Pakistan.png"),
    FlagInfo(name: "Palau", imageName: "Palau.png"),
    FlagInfo(name: "Palestine", imageName: "Palestine.png"),
    FlagInfo(name: "Panama", imageName: "Panama.png"),
    FlagInfo(name: "Papua New Guinea", imageName: "Papua_New_Guinea.png"),
    FlagInfo(name: "Paraguay", imageName: "Paraguay.png"),
    FlagInfo(name: "Peru", imageName: "Peru.png"),
    FlagInfo(name: "Poland", imageName: "Poland.png"),
    FlagInfo(name: "Portugal", imageName: "Portugal.png"),
    FlagInfo(name: "Qatar", imageName: "Qatar.png"),
    FlagInfo(name: "Romania", imageName: "Romania.png"),
    FlagInfo(name: "Russia", imageName: "Russia.png"),
    FlagInfo(name: "Rwanda", imageName: "Rwanda.png"),
    FlagInfo(name: "Saint Kitts and Nevis", imageName: "Saint_Kitts_and_Nevis.png"),
    FlagInfo(name: "Saint Lucia", imageName: "Saint_Lucia.png"),
    FlagInfo(name: "Saint Vincent and the Grenadines", imageName: "Saint_Vincent_and_the_Grenadines.png"),
    FlagInfo(name: "Samoa", imageName: "Samoa.png"),
    FlagInfo(name: "San Marino", imageName: "San_Marino.png"),
    FlagInfo(name: "Sao Tome and Principe", imageName: "Sao_Tome_and_Principe.png"),
    FlagInfo(name: "Saudi Arabia", imageName: "Saudi_Arabia.png"),
    FlagInfo(name: "Senegal", imageName: "Senegal.png"),
    FlagInfo(name: "Serbia", imageName: "Serbia.png"),
    FlagInfo(name: "Seychelles", imageName: "Seychelles.png"),
    FlagInfo(name: "Sierra Leone", imageName: "Sierra_Leone.png"),
    FlagInfo(name: "Singapore", imageName: "Singapore.png"),
    FlagInfo(name: "Slovakia", imageName: "Slovakia.png"),
    FlagInfo(name: "Slovenia", imageName: "Slovenia.png"),
    FlagInfo(name: "Somalia", imageName: "Somalia.png"),
    FlagInfo(name: "South Africa", imageName: "South_Africa.png"),
    FlagInfo(name: "South Korea", imageName: "South_Korea.png"),
    FlagInfo(name: "Spain", imageName: "Spain.png"),
    FlagInfo(name: "Sri Lanka", imageName: "Sri_Lanka.png"),
    FlagInfo(name: "Suriname", imageName: "Suriname.png"),
    FlagInfo(name: "Swaziland", imageName: "Swaziland.png"),
    FlagInfo(name: "Sweden", imageName: "Sweden.png"),
    FlagInfo(name: "Switzerland", imageName: "Switzerland.png"),
    FlagInfo(name: "Syria", imageName: "Syria.png"),
    FlagInfo(name: "Tajikistan", imageName: "Tajikistan.png"),
    FlagInfo(name: "Tanzania", imageName: "Tanzania.png"),
    FlagInfo(name: "Thailand", imageName: "Thailand.png"),
    FlagInfo(name: "The Gambia", imageName: "The_Gambia.png"),
    FlagInfo(name: "Togo", imageName: "Togo.png"),
    FlagInfo(name: "Tonga", imageName: "Tonga.png"),
    FlagInfo(name: "Trinidad and Tobago", imageName: "Trinidad_and_Tobago.png"),
    FlagInfo(name: "Tunisia", imageName: "Tunisia.png"),
    FlagInfo(name: "Turkey", imageName: "Turkey.png"),
    FlagInfo(name: "Turkmenistan", imageName: "Turkmenistan.png"),
    FlagInfo(name: "Tuvalu", imageName: "Tuvalu.png"),
    FlagInfo(name: "Uganda", imageName: "Uganda.png"),
    FlagInfo(name: "Ukraine", imageName: "Ukraine.png"),
    FlagInfo(name: "Uruguay", imageName: "Uruguay.png"),
    FlagInfo(name: "Uzbekistan", imageName: "Uzbekistan.png"),
    FlagInfo(name: "Vanuatu", imageName: "Vanuatu.png"),
    FlagInfo(name: "Venezuela", imageName: "Venezuela.png"),
    FlagInfo(name: "Vietnam", imageName: "Vietnam.png"),
    FlagInfo(name: "Yemen", imageName: "Yemen.png"),
    FlagInfo(name: "Zambia", imageName: "Zambia.png"),
    FlagInfo(name: "Zimbabwe", imageName: "Zimbabwe.png"),
    FlagInfo(name: "the Bahamas", imageName: "the_Bahamas.png"),
    FlagInfo(name: "the Central African Republic", imageName: "the_Central_African_Republic.png"),
    FlagInfo(name: "the Comoros", imageName: "the_Comoros.png"),
    FlagInfo(name: "the Czech Republic", imageName: "the_Czech_Republic.png"),
    FlagInfo(name: "the Democratic Republic of the Congo", imageName: "the_Democratic_Republic_of_the_Congo.png"),
    FlagInfo(name: "the Dominican Republic", imageName: "the_Dominican_Republic.png"),
    FlagInfo(name: "the Federated States of Micronesia", imageName: "the_Federated_States_of_Micronesia.png"),
    FlagInfo(name: "the Marshall Islands", imageName: "the_Marshall_Islands.png"),
    FlagInfo(name: "the Netherlands", imageName: "the_Netherlands.png"),
    FlagInfo(name: "the People's Republic of China", imageName: "the_People's_Republic_of_China.png"),
    FlagInfo(name: "the Philippines", imageName: "the_Philippines.png"),
    FlagInfo(name: "the Republic of China", imageName: "the_Republic_of_China.png"),
    FlagInfo(name: "the Republic of the Congo", imageName: "the_Republic_of_the_Congo.png"),
    FlagInfo(name: "the Solomon Islands", imageName: "the_Solomon_Islands.png"),
    FlagInfo(name: "the United Kingdom", imageName: "the_United_Kingdom.png"),
    FlagInfo(name: "the United States", imageName: "the_United_States.png"),
    FlagInfo(name: "the Vatican City", imageName: "the_Vatican_City.png"),
]

