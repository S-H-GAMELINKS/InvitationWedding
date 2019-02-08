<template>
    <div class="container">
        <div v-if="flag">
        <h1>招待状</h1>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">氏名</span>
            </div>
            <input type="text" class="form-control" v-model="name"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">フリガナ</span>
            </div>
            <input type="text" class="form-control" v-model="name_furi"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">出欠</span>
            </div>
            <select v-model="attendance">
                <option>出欠確認</option>
                <option>出席</option>
                <option>欠席</option>
            </select> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">郵便番号</span>
            </div>
            <input type="text" class="form-control" v-model="yubin"> 
        </div>
        
        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">住所</span>
            </div>
            <input type="text" class="form-control" v-model="address"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">メールアドレス</span>
            </div>
            <input type="text" class="form-control" v-model="email"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">電話番号</span>
            </div>
            <input type="text" class="form-control" v-model="tel"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">アレルギーなど</span>
            </div>
            <input type="text" class="form-control" v-model="allergy"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">備考</span>
            </div>
            <input type="text" class="form-control" v-model="other"> 
        </div>

        <p>
            <button type="button" class="btn btn-primary" v-on:click="createAttend">送信</button>
        </p>
        </div>
        <div v-else>
            招待状にご記入いただきありがとうございます！
        </div>
    </div>
</template>

<script>
import axios from 'axios';
import $ from 'jquery';

export default {
    data: function() {
        return {
            flag: true,
            name: "",
            name_furi: "",
            attendance: "",
            attend: false,
            address: "",
            email: "",
            tel: "",
            allergy: "",
            other: ""
        }
    },
    methods: {
        createAttend: function() {
            axios.defaults.headers['X-CSRF-TOKEN'] = $('meta[name=csrf-token]').attr('content');
            axios.defaults.headers['content-type'] = 'application/json';

            if (this.attendance === "出席") {
                this.attend = true;
            } else {
                this.attend = false;
            }

            axios.post('/attendances', {attendance: {name: this.name, name_furi: this.name_furi, attend: this.attend, yubin: this.yubin, address: this.address, email: this.email, tel: this.tel, other: this.other}}).then((response) => {
                console.log(response);

                if (this.attend === true) {
                    alert("会場で会えるのをお待ちしております！")
                } else {
                    alert("また会える時を楽しみにしております！")
                }

                this.flag = false;

            }, (error) => {
                console.log(error);
            })
        }
    }
}
</script>