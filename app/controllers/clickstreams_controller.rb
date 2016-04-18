class ClickstreamsController < ApplicationController
  require 'securerandom'

  def new
    session[:user_id] ||= SecureRandom.uuid
    data = {
      values: { value: 1 },
      tags: {
        session_id: session[:user_id],
        url_clicked: 'index.html'
      }
    }
    InfluxDB::Rails.client.write_point("clickpoint", data)
  end

  def submit_email
    data = {
      values: { value: 1 },
      tags: {
        session_id: session[:user_id],
        url_clicked: 'submit_email.html'
      }
    }
    InfluxDB::Rails.client.write_point("clickpoint", data)
    render json: {"data": "submit_email"}, status: :ok
  end

  def exit
    data = {
      values: { value: 1 },
      tags: {
        session_id: session[:user_id],
        url_clicked: 'exit.html'
      }
    }
    InfluxDB::Rails.client.write_point("clickpoint", data)
    session[:user_id] = nil
    render json: {"data": "exit"}, status: :ok
  end

  def watch_video
    data = {
      values: { value: 1 },
      tags: {
        session_id: session[:user_id],
        url_clicked: 'watch_video.html'
      }
    }
    InfluxDB::Rails.client.write_point("clickpoint", data)
    render json: {"data": "watch_video"}, status: :ok
  end
end
